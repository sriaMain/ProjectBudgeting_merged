from django.http import FileResponse
import os
from django.conf import settings

def frontend(request):
    index_path = os.path.join(
        settings.BASE_DIR.parent, 
        "Project_Budgeting-FE-", 
        "dist", 
        "index.html"
    )
    return FileResponse(open(index_path, "rb"))
