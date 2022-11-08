package com.example.showdoespigao;
//normal

import androidx.appcompat.app.AppCompatActivity;

import android.graphics.Color;
import android.os.Bundle;

import com.github.mikephil.charting.charts.BarChart;
import com.github.mikephil.charting.components.Description;
import com.github.mikephil.charting.components.Legend;
import com.github.mikephil.charting.components.LegendEntry;
import com.github.mikephil.charting.data.BarData;
import com.github.mikephil.charting.data.BarDataSet;
import com.github.mikephil.charting.data.BarEntry;
import com.github.mikephil.charting.utils.ColorTemplate;

import java.util.ArrayList;

public class PlateiaActivity extends AppCompatActivity {

    ArrayList barArrayList;
    //int colorArray[]  = {R.color.color1, R.color.color2 ,R.color.color3,R.color.color4 };
    int colorArray[]  = {Color.RED, Color.BLUE ,Color.GREEN, Color.YELLOW };
    //int[] colorClassArray = new int[] {Color.parseColor("#E91E63"),Color.parseColor("#E91E63"),Color.parseColor("#E91E63"),Color.parseColor("#E91E63")};
    String[] legendName = {"A", "B", "C", "D"};



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
        //barDataSet.setColors(ColorTemplate.COLORFUL_COLORS);
        barDataSet.setColors(colorArray);
        //text color
        barDataSet.setValueTextColor(Color.WHITE);
        //setting textsize
        barDataSet.setValueTextSize(20f);

        Description description;
        description = barChart.getDescription();
        description.setEnabled(false);

        Legend legend;
        legend = barChart.getLegend();
        legend.setEnabled(true);
        legend.setTextColor(Color.WHITE);
        legend.setTextSize(22);
        legend.setFormSize(20);


        LegendEntry[] legendEntries = new LegendEntry[4];
        for(int i=0; i < legendEntries.length; i++){
            LegendEntry entry = new LegendEntry();
            entry.formColor = colorArray[i];
            entry.label = String.valueOf(legendName[i]);
            legendEntries[i] = entry;
        }
        legend.setCustom(legendEntries);



    }

    private void getData(){
        barArrayList = new ArrayList();
        barArrayList.add(new BarEntry(2f, 11));
        barArrayList.add(new BarEntry(3f, 13));
        barArrayList.add(new BarEntry(4f, 63));
        barArrayList.add(new BarEntry(5f, 13));

    }
}