from django.conf.urls import patterns, url
from app import views

urlpatterns = patterns('',
    url(r'^$', views.pre, name='pre'),
    url(r'^results/$', views.results, name='results'),
    url(r'^results/by-round/(\d{1})/$', views.results, name='results'),
)
