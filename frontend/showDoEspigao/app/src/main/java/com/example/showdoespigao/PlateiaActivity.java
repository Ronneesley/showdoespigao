package com.example.showdoespigao;

import androidx.appcompat.app.AppCompatActivity;

import android.graphics.Color;
import android.os.Bundle;

import com.github.mikephil.charting.charts.BarChart;
import com.github.mikephil.charting.data.BarData;
import com.github.mikephil.charting.data.BarDataSet;
import com.github.mikephil.charting.data.BarEntry;
import com.github.mikephil.charting.utils.ColorTemplate;

import java.util.ArrayList;

public class PlateiaActivity extends AppCompatActivity {

    ArrayList barArrayList;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_plateia);
        BarChart barChart = findViewById(R.id.barchart);
        getData();
        BarDataSet barDataSet = new BarDataSet(barArrayList, "Graph List");
        BarData barData = new BarData(barDataSet);
        barChart.setData(barData);
       //color barset
        barDataSet.setColors(ColorTemplate.COLORFUL_COLORS);
        //text color
        barDataSet.setValueTextColor(Color.BLACK);
        //setting textsize
        barDataSet.setValueTextSize(16f);
        //barChart.setDescription().setEnabled(true);

    }

    private void getData(){
        barArrayList = new ArrayList();
        barArrayList.add(new BarEntry(2f, 11));
        barArrayList.add(new BarEntry(3f, 13));
        barArrayList.add(new BarEntry(4f, 63));
        barArrayList.add(new BarEntry(5f, 13));

    }
}