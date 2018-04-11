package com.github.fontys.TestBean;

import javax.enterprise.context.RequestScoped;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;

@RequestScoped
@Path("/test")
public class Test {

    @GET
    @Produces(MediaType.APPLICATION_JSON)
    public Response sayHello() {
        return Response.ok("Hello").build();
    }

    @GET
    @Path("badcode")
    @Produces(MediaType.APPLICATION_JSON)
    public Response sayBadcode() {

        int pos1 = 12;
        int pos2 = 13;
        int pos3 = 15;
        int totalNumber = 0;

        for (int x = 0; x < pos1; x++) {
            totalNumber++;
            for (int y = 0; y < pos2; y++) {
                totalNumber++;
                for(int z = 0; z< pos3; z++){
                    if(totalNumber > 30){
                        if(totalNumber < 40) {
                            switch (totalNumber){
                                case 31:
                                    totalNumber += 2;
                                case 35:
                                    totalNumber += 5;
                                default:
                                    totalNumber *= totalNumber;
                            }
                        }
                    }
                }
            }
        }

        String s = String.format("Bad code %s", totalNumber);

        return Response.ok(s).build();
    }

}
