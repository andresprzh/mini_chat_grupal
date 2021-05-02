from rest_framework import viewsets
from django.shortcuts import render
from account.models import Account


def home_screen_view(request, *args, **kwargs):
    context = {}

    
    persons = Account.objects.all().order_by("username")
    
    context['persons'] = persons
    
    return render(request, "base/home.html", context)

def handler_404(request, *args, **kwargs):
    return render(request,"base/404.html")


