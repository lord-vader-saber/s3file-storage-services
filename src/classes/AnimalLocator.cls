public class AnimalLocator {
    public static String getAnimalNameById(Integer ID)
    {
        Http http = new Http();
        String nameAnimal;
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals/'+ID);
        request.setMethod('GET');
        HttpResponse response = http.send(request);
        // If the request is successful, parse the JSON response.
        if (response.getStatusCode() == 200) 
        {
            Map<String, Object> results = (Map<String, Object>) 
                JSON.deserializeUntyped(response.getBody());
            Map<String, Object> animals = (Map<String, Object>)results.get('animal');   
            nameAnimal=string.valueOf(animals.get('name'));
        }
        return nameAnimal;
    }
}