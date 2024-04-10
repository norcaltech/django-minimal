from django.urls import path
from dj_minimal.views import health_check

urlpatterns = [
    path('health/', health_check),
]
