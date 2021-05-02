from django.shortcuts import redirect

class AuthRequiredMiddleware(object):
    def __init__(self, get_response):
        self.get_response = get_response

    def __call__(self, request):
        response = self.get_response(request)
        
        no_login_pages = [
            'login',
            'register',
            'password_reset_done',
            'password_reset_confirm',
            'password_reset',
            'password_reset_complete'
        ]
        if hasattr(request.resolver_match, 'url_name'):
            if not request.user.is_authenticated and request.resolver_match.url_name not in no_login_pages:
                return redirect('login')

        return response