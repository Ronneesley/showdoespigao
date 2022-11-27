package com.example.showdoespigao;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;


public class MainActivity extends AppCompatActivity {


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        setContentView(R.layout.activity_main);

        setContentView(R.layout.tela_de_recorde);

        setContentView(R.layout.tela_apos_login);

        setContentView(R.layout.tela_quiz);
    }
}