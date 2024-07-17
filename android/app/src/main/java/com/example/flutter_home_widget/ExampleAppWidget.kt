package com.example.flutter_home_widget

import android.content.Context
import HomeWidgetGlanceWidgetReceiver
import androidx.compose.runtime.Composable
import androidx.compose.ui.unit.dp
import androidx.glance.Button
import androidx.glance.GlanceId
import androidx.glance.GlanceModifier
import androidx.glance.GlanceTheme
import androidx.glance.background
import androidx.glance.appwidget.*
import androidx.glance.text.Text
import androidx.glance.layout.*

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
            GlanceTheme {
                MyContent()
            }
        }
    }

    @Composable
    private fun MyContent() = Column(
        modifier = GlanceModifier.fillMaxSize()
            .background(GlanceTheme.colors.background),
        verticalAlignment = Alignment.Top,
        horizontalAlignment = Alignment.CenterHorizontally
    ) {
        Text(text = "Where to?", modifier = GlanceModifier.padding(12.dp))
        Row(horizontalAlignment = Alignment.CenterHorizontally) {
            Button(
                text = "Home",
                onClick = {}
            )
            Button(
                text = "Work",
                onClick = {}
            )
        }
    }
}
