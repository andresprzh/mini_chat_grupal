from django.urls import include, path
from rest_framework import routers
from . import views

router = routers.DefaultRouter()
router.register(r'PublicChatMessages', views.PublicChatMessagesViewSet)

# Wire up our API using automatic URL routing.
# Additionally, we include login URLs for the browsable API.
urlpatterns = [
    path('', include(router.urls)),
    path('api-auth/', include('rest_framework.urls', namespace='rest_framework')),
    path('PublicChatMessagesPost/', views.PublicChatMessagesViewSetPost.as_view(), name="messages_api"),  
    path('PublicChatMessagesPost/<int:pk>/',views.PublicChatMessagesViewSetDetail.as_view(), name = 'message_detail')

]