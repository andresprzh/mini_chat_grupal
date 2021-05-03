from django.shortcuts import render
from rest_framework import viewsets, status
from rest_framework.views import APIView
from rest_framework.response import Response
from rest_framework.decorators import api_view, permission_classes
from rest_framework.permissions import AllowAny

from .serializers import PublicChatMessagesSerializer, PublicChatMessagesSerializer2
from base.models import PublicChatMessages
from account.models import Account
# import pdb


class PublicChatMessagesViewSet(viewsets.ModelViewSet):
    queryset = PublicChatMessages.objects.all().order_by('timestamp')
    serializer_class = PublicChatMessagesSerializer


class PublicChatMessagesViewSetPost(APIView):

    def get(self, request):
        messages = PublicChatMessages.objects.all().order_by('timestamp')
        serializer = PublicChatMessagesSerializer2(messages,many=True)
        return Response(serializer.data)

    def post(self, request, format=None):
        
        serializer = PublicChatMessagesSerializer2(data=request.data,)
        
        
        # pdb.set_trace()
        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data, status=status.HTTP_201_CREATED)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)

class PublicChatMessagesViewSetDetail(APIView):

    def get(self, request, pk=None):
        messages = PublicChatMessages.objects.filter(id = pk).first()
        serializer = PublicChatMessagesSerializer2(messages,many=False)
        return Response(serializer.data)

    def delete(self, request, pk=None):
        messages = PublicChatMessages.objects.filter(id = pk).first()
        messages.delete()
        return Response({'message':'Mensaje Eliminado correctamente!'},status = status.HTTP_200_OK)

    # def post(self, request, format=None):
        
    #     serializer = PublicChatMessagesSerializer2(data=request.data,)
        
    #     # pdb.set_trace()
    #     if serializer.is_valid():
    #         serializer.save()
    #         return Response(serializer.data, status=status.HTTP_201_CREATED)
    #     return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)
    # def delete(self, request, format=None):
    #     serializer = PublicChatMessagesSerializer2(data=request.data,)
        
    #     # pdb.set_trace()
    #     if serializer.is_valid():
    #         serializer.save()
    #         return Response(serializer.data, status=status.HTTP_201_CREATED)
    #     return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)
