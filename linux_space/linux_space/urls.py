from django.contrib import admin
from django.urls import include, path

urlpatterns = [
    path("techlog/", include("techlog.urls")),
    path('admin/', admin.site.urls),
]
