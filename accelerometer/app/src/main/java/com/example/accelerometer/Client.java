package com.example.accelerometer;
import android.content.Context;
import android.widget.Toast;

import com.android.volley.Request;
import com.android.volley.RequestQueue;
import com.android.volley.toolbox.StringRequest;
import com.android.volley.toolbox.Volley;

import java.util.Map;

public class Client {
    private final RequestQueue queue;
    private boolean didFinishRequest = true;
    public Client(Context context) {
        this.queue =  Volley.newRequestQueue(context);
    }

    public  void sendGetRequest(Context context, String url) {

        didFinishRequest = false;
        // Create the request object.
        StringRequest stringRequest = new StringRequest(Request.Method.GET, url,
                response -> {
                    Toast.makeText(context, response, Toast.LENGTH_LONG).show();
                    this.didFinishRequest = true;
                },
                error -> {
                    Toast.makeText(context, error.toString(), Toast.LENGTH_LONG).show();
                    this.didFinishRequest = true;
                });

        queue.add(stringRequest);
    }


    public  void sendPostRequest(Context context, String url, Map<String, String> params) {
        this.didFinishRequest = false;

        StringRequest stringRequest = new StringRequest(Request.Method.POST, url,
                response -> {
                    Toast.makeText(context, response, Toast.LENGTH_LONG).show();
                    this.didFinishRequest = true;
                },
                error -> {
                    Toast.makeText(context, error.toString(), Toast.LENGTH_LONG).show();
                    this.didFinishRequest = true;
                }) {
            @Override
            protected Map<String, String> getParams() {return params;}
        };

        queue.add(stringRequest);
    }

}
