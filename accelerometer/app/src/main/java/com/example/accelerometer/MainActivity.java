package com.example.accelerometer;

import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.app.AppCompatDelegate;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Bundle;
import android.util.Log;
import android.widget.TextView;

import java.util.HashMap;

public class MainActivity extends AppCompatActivity implements SensorEventListener {
    private float[] accelerometerValues;
    private float[] magneticFieldValues;
    private float[] rotationMatrix;
    private float[] orientationAngles;


    private SensorManager sensorManager;
    private TextView squareTextView;

    private Client client;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);


      //  AppCompatDelegate.setDefaultNightMode(AppCompatDelegate.MODE_NIGHT_NO);
        squareTextView = findViewById(R.id.tv_square);

        rotationMatrix = new float[9];
        orientationAngles = new float[3];
        accelerometerValues = new float[3];
        magneticFieldValues = new float[3];

        client = new Client(this);
        setUpSensorStuff();

    }

    @Override
    protected void onResume() {
        super.onResume();


    }

    private void setUpSensorStuff() {
        sensorManager = (SensorManager) getSystemService(SENSOR_SERVICE);
        if (sensorManager != null) {
            Sensor accelerometerSensor = sensorManager.getDefaultSensor(Sensor.TYPE_ACCELEROMETER);
            // get the gyroscopeSensor
            Sensor gyroscopeSensor = sensorManager.getDefaultSensor(Sensor.TYPE_GYROSCOPE);
            // get the magnetometerSensor
            Sensor magnetometerSensor = sensorManager.getDefaultSensor(Sensor.TYPE_MAGNETIC_FIELD);
            if (accelerometerSensor != null) {
                Log.d("MainActivity", "Accelerometer Sensor: " + accelerometerSensor.toString());
                sensorManager.registerListener(this, accelerometerSensor, SensorManager.SENSOR_DELAY_NORMAL);
            } else {
                Log.d("MainActivity", "Accelerometer Sensor not available");
            }
            //gyroscopeSensor
            if (gyroscopeSensor != null) {
                Log.d("MainActivity", "gyroscope Sensor: " + gyroscopeSensor.toString());
                sensorManager.registerListener(this, gyroscopeSensor, SensorManager.SENSOR_DELAY_NORMAL);
            } else {
                Log.d("MainActivity", "gyroscope Sensor not available");
            }
            //magnetometerSensor
            if (magnetometerSensor != null) {
                Log.d("MainActivity", "gyroscope Sensor: " + magnetometerSensor.toString());
                sensorManager.registerListener(this, magnetometerSensor, SensorManager.SENSOR_DELAY_NORMAL);
            } else {
                Log.d("MainActivity", "magnetometerSensor Sensor not available");
            }
            Log.d("MainActivity", "SensorManager: " + sensorManager.toString());
        }
    }

    @Override
    public void onSensorChanged(SensorEvent event) {
        if (event.sensor.getType() == Sensor.TYPE_ACCELEROMETER) {
            accelerometerValues = event.values.clone();
        } else if (event.sensor.getType() == Sensor.TYPE_MAGNETIC_FIELD) {
            magneticFieldValues = event.values.clone();
        }

        // Calculate the slope angle using accelerometer and magnetic field data
        if (accelerometerValues != null && magneticFieldValues != null) {
            SensorManager.getRotationMatrix(rotationMatrix, null, accelerometerValues, magneticFieldValues);
            SensorManager.getOrientation(rotationMatrix, orientationAngles);

            // orientationAngles[1] represents the pitch angle in radians
            double slopeAngleRadians = orientationAngles[1];

            // Convert the slope angle to degrees
            double slopeAngleDegrees = Math.toDegrees(slopeAngleRadians);
            // absolute slope value
            double absoluteSlopeAngleDegrees = Math.abs(slopeAngleDegrees);
            if (absoluteSlopeAngleDegrees > 22) {
                // Update the UI or perform actions based on the slope angle
                squareTextView.setText("Angle " + (int) absoluteSlopeAngleDegrees);
                HashMap<String, String> params = new HashMap<>();
                params.put("angle", Double.toString(absoluteSlopeAngleDegrees));
                client.sendPostRequest(this , "http://192.168.23.179/angle", params);

            } else {
                // Update the UI or perform actions based on the slope angle
                squareTextView.setText("good angle ");
            }
        }
    }



    @Override
    public void onAccuracyChanged(Sensor sensor, int accuracy) {
        return;
    }

    @Override
    protected void onDestroy() {
        sensorManager.unregisterListener(this);
        super.onDestroy();
    }
}
