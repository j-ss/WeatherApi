import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.net.*;
import javax.json.*;
public class ShowWeather extends javax.servlet.http.HttpServlet {

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {

        response.setContentType("plain/text");
        PrintWriter out=response.getWriter();

        String place=request.getParameter("place");

        URL url = new URL("https://api.openweathermap.org/data/2.5/weather?q="+place+"&appid=8e76f8c1d7aebdf0297b86950fff33da");

        try
        {

            InputStream inputStream=url.openStream();
            JsonReader jsonReader=Json.createReader(inputStream);
            JsonObject jsonObject=jsonReader.readObject();
            JsonObject jsonObject1=jsonObject.getJsonObject("coord");
            JsonValue lon=jsonObject1.get("lon");
            JsonValue lan=jsonObject1.get("lat");

            JsonArray jsonArray=jsonObject.getJsonArray("weather");
            JsonObject jsonObject2=jsonObject.getJsonObject("main");

            JsonObject desc=jsonArray.getJsonObject(0);
            JsonValue description=desc.get("description");
            JsonValue avgtemp=jsonObject2.get("temp");
            JsonValue mintemp=jsonObject2.get("temp_min");
            JsonValue maxtemp=jsonObject2.get("temp_max");
            JsonValue pressure=jsonObject2.get("pressure");
            JsonValue humidity=jsonObject2.get("humidity");
            JsonObject jsonObject3=jsonObject.getJsonObject("wind");
            JsonValue wind=jsonObject3.get("speed");
            request.setAttribute("lon",lon);
            request.setAttribute("lan",lan);
            request.setAttribute("description",description);
            request.setAttribute("avgtemp",avgtemp);
            request.setAttribute("maxtemp",maxtemp);
            request.setAttribute("mintemp",mintemp);
            request.setAttribute("humidity",humidity);
            request.setAttribute("pressure",pressure);
            request.setAttribute("wind",wind);
            inputStream.close();

        }
        catch(IOException e)
        {
         e.printStackTrace();
        }
        request.getRequestDispatcher("result.jsp").forward(request,response);
    }
}