package cloudproject;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.auth.oauth2.ServiceAccountCredentials;
import com.google.cloud.bigquery.BigQuery;
import com.google.cloud.bigquery.BigQueryOptions;
import com.google.cloud.bigquery.FieldValueList;
import com.google.cloud.bigquery.Job;
import com.google.cloud.bigquery.JobId;
import com.google.cloud.bigquery.JobInfo;
import com.google.cloud.bigquery.QueryJobConfiguration;
import com.google.cloud.bigquery.Table;
import com.google.cloud.bigquery.TableResult;

@WebServlet("/SubmitAction")
public class SubmitAction extends HttpServlet {

	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public SubmitAction() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		if ((request.getParameter("genre") == null || request.getParameter("genre") == "")
				&& (request.getParameter("year") == null || request.getParameter("year") == "")
				&& (request.getParameter("rating") == null || request.getParameter("rating") == "")) {
			response.sendRedirect("searchPage.jsp");
		} else {
			// TODO Auto-generated method stub
			processRequest(request, response);
		}
	}

	private void processRequest(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub

		response.setContentType("text/html;charset=UTF-8");
		int yearVal = 0;
		float ratingVal = 0;
		String genre = "";
		if (request.getParameter("genre") != null && request.getParameter("genre") != "" && request.getParameter("genre").length() != 0 ) {
			genre = request.getParameter("genre");
		}
		
		if (request.getParameter("year") != null && request.getParameter("year") != "" && request.getParameter("year").length() != 0) {
			String year = request.getParameter("year");
			yearVal = Integer.parseInt(year);
		}

		if (request.getParameter("rating") != null && request.getParameter("rating") != "" && request.getParameter("rating").length() != 0) {
			String rating = request.getParameter("rating");
			ratingVal = Float.parseFloat(rating);
		}

		BigQuery bigquery;
		try {
			bigquery = BigQueryOptions.newBuilder().setProjectId("gehaproject")
					.setCredentials(ServiceAccountCredentials
							.fromStream(new FileInputStream("C:\\Users\\GehaProject-256c72b4c836.json")))
					.build().getService();

			System.out.println(bigquery);
			for (Table table : bigquery.listTables("IMDB_Dataset").iterateAll()) {
				System.out.println(table);
			}

			// Create a query request
			// condition likhni hai for year erch query only
			QueryJobConfiguration queryConfig = QueryJobConfiguration.newBuilder(
					"select distinct a.title,a.Years,a.genres,b.rating from `gehaproject.IMDB_Dataset.Movies_T` a, `gehaproject.IMDB_Dataset.Ratings_T` b \r\n"
							+ "where a.movieid  = b.movieid\r\n" + "and a.Years =" + yearVal + "\r\nand b.rating =" + ratingVal)
					.build();
			System.out.println("query:" + queryConfig);
			JobId jobId = JobId.of(UUID.randomUUID().toString());
			Job queryJob = bigquery.create(JobInfo.newBuilder(queryConfig).setJobId(jobId).build());

			queryJob = queryJob.waitFor();

			TableResult result = queryJob.getQueryResults();
			System.out.println(result);
			// Read rows
			System.out.println("Table rows:");
			List<String> list = new ArrayList<String>();
			Movies m1 = null;
			ArrayList movies = new ArrayList();

			for (FieldValueList row : result.iterateAll()) {
				m1 = new Movies();
				String r = row.get(0).getValue().toString();

				m1.setMovieTitle(r);
				String r1 = row.get(1).getValue().toString();

				m1.setYear(r1);
				String r2 = row.get(2).getValue().toString();
				m1.setGenre(r2);
				String r3 = row.get(3).getValue().toString();
				m1.setRating(r3);
				movies.add(m1);
			}

			List moviesFinalList = movies;
			request.setAttribute("MoviesList", moviesFinalList);
			RequestDispatcher rd = request.getRequestDispatcher("movieList.jsp");
			rd.forward(request, response);
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
