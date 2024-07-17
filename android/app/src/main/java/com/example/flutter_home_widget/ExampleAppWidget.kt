package com.example.flutter_home_widget

import android.content.Context
import HomeWidgetGlanceWidgetReceiver
import androidx.glance.GlanceId
import androidx.glance.appwidget.GlanceAppWidget
import androidx.glance.appwidget.provideContent
import androidx.glance.text.Text

/**
 * Implementation of App Widget functionality.
 */

class ExampleAppWidgetReceiver : HomeWidgetGlanceWidgetReceiver<ExampleAppWidget>() {
    override val glanceAppWidget = ExampleAppWidget()
}

class ExampleAppWidget : GlanceAppWidget() {
    override suspend fun provideGlance(context: Context, id: GlanceId) {

        // In this method, load data needed to render the AppWidget.
        // Use `withContext` to switch to another thread for long running
        // operations.

        provideContent {
            // create your AppWidget here
            Text("Hello World")
        }
    }
}
