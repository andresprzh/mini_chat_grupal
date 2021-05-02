from django.shortcuts import render
from rest_framework import viewsets

from .serializers import PublicChatMessagesSerializer, UserSerializer
from base.models import PublicChatMessages
from account.models import Account

class PublicChatMessagesViewSet(viewsets.ModelViewSet):
    queryset = PublicChatMessages.objects.all().order_by('timestamp')
    serializer_class = PublicChatMessagesSerializer

class UsersViewSet(viewsets.ModelViewSet):
    queryset = Account.objects.all().order_by('username')
    serializer_class = UserSerializer