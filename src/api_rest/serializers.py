from rest_framework import serializers
from base.models import PublicChatMessages
from account.models import Account

class UserSerializer(serializers.HyperlinkedModelSerializer):    
    class Meta:
        model = Account
        fields = ('id','username')

class PublicChatMessagesSerializer(serializers.HyperlinkedModelSerializer):
    user = UserSerializer(many=False,)
    class Meta:
        model = PublicChatMessages
        fields = ('id','user', 'message')