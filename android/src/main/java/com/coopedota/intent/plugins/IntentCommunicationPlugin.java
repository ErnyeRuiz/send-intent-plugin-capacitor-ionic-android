package com.coopedota.intent.plugins;

import android.util.Log;

public class IntentCommunicationPlugin {

    public String echo(String value) {
        Log.i("Echo", value);
        return value;
    }
}
