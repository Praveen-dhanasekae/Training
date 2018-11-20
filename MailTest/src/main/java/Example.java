import com.sendgrid.*;
import java.io.IOException;

public class Example {
  public static void main(String[] args) throws IOException {
    try {
      SendGrid sg = new SendGrid("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");
      Request request = new Request();
      request.setMethod(Method.POST);
      request.setEndpoint("mail/send");
      request.setBody("{\"personalizations\": [{\"to\": [{\"email\": \"praveenavantgrade@gmail.com\"}]}],\"from\": {\"email\": \"example@example.com\"},\"subject\": \"Hello, World!\",\"content\": [{\"type\": \"text/plain\", \"value\": \"Heya!\"}]}\r\n");
      Response response = sg.api(request);
      System.out.println(response.getStatusCode());
      System.out.println(response.getBody());
      System.out.println(response.getHeaders());
    } catch (IOException ex) {
      throw ex;
    }
  }
}