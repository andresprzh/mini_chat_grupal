from rest_framework import serializers
from base.models import PublicChatMessages
from account.models import Account

class UserSerializer(serializers.HyperlinkedModelSerializer):    
    class Meta:
        model = Account
        fields = ('id','username')

class PublicChatMessagesSerializer(serializers.HyperlinkedModelSerializer):
    user = UserSerializer(many=False, read_only=True)   
    # user = serializers.PrimaryKeyRelatedField(
    #                  queryset=Account.objects.all())
    class Meta:
        model = PublicChatMessages  
        fields = ('id', 'message','user')

class PublicChatMessagesSerializer2(serializers.HyperlinkedModelSerializer):
    
    user = serializers.PrimaryKeyRelatedField(
                     queryset=Account.objects.all())
    class Meta:
        model = PublicChatMessages  
        fields = ('id', 'message', 'user')
        
