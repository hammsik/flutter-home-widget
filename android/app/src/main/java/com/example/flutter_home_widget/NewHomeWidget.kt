package com.example.flutter_home_widget

import android.appwidget.AppWidgetManager
import android.appwidget.AppWidgetProvider
import android.content.Context
import android.widget.RemoteViews

// New import.
import es.antonborri.home_widget.HomeWidgetPlugin

/**
 * Implementation of App Widget functionality.
 */
class NewHomeWidget : AppWidgetProvider() {
    override fun onUpdate(
            context: Context,
            appWidgetManager: AppWidgetManager,
            appWidgetIds: IntArray,
    ) {
        for (appWidgetId in appWidgetIds) {
            // Get reference to SharedPreferences
            val widgetData = HomeWidgetPlugin.getData(context)
            val views = RemoteViews(context.packageName, R.layout.new_home_widget).apply {

                val title = widgetData.getString("characterName", null)
                setTextViewText(R.id.characterName, title ?: "No title set")

                val description = widgetData.getString("characterImageUrl", null)
                setTextViewText(R.id.characterImageUrl, description ?: "No description set")
            }

            appWidgetManager.updateAppWidget(appWidgetId, views)
        }
    }
}