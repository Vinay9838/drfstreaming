from django.urls import path

from webapp import views

urlpatterns = [
   
 path('generate-stream',views.GenerateStreamView.as_view(),name='generate_stream'),
 path('',views.HomeView.as_view(),name='home')
]
