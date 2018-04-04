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
    public Response sayHello(){
        return Response.ok("Hello").build();
    }

}
