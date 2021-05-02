from django.contrib import admin
from django.contrib.auth.admin import UserAdmin
from account.models import Account

class AccountAdmin(UserAdmin):
    list_display = ('email','username','date_joined','last_joined','is_admin','is_staff')
    search_fields = ('email','username')
    readonly_fields = ('id', 'date_joined', 'last_login')

    fieldsets = (
        (None, {'fields': ('email', 'password')}),
        ('Permissions', {'fields': ('is_admin','is_staff', 'is_active', 'is_superuser')}),
        ('Image', {'fields': ('profile_image',)}),
        ('Dates', {'fields': ('date_joined','last_login')}),
    )

    filter_horizontal=()
    list_filter=()
    fielsets=()

admin.site.register(Account, AccountAdmin)
# Register your models here.
