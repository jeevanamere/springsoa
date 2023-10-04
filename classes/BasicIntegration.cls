public class BasicIntegration {
    public static void basicInt(){
        Http http = new Http();
        HttpRequest req = New HttpRequest();
        req.setMethod('GET');
        req.setEndpoint('https://postman-echo.com/get?foo1=bar1&foo2=bar2');
        req.setHeader('Content-Type', 'application/json');
        HttpResponse res = http.send(req);
        if(res.getStatusCode()==200){
            System.debug(res.getBody());
        }
        else {
            System.debug(res.getStatus());
            System.debug(res.getBody());
        }
    }
}