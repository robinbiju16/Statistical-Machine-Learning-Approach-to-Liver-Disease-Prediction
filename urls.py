"""medifile URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/2.2/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from adminapp import views
from django.conf import settings
from django.contrib import admin
from django.contrib.staticfiles.urls import staticfiles_urlpatterns
from django.urls import path, include
from userapp import userviews
from django.conf.urls.static import static



urlpatterns = [
    path('', userviews.user_homeview, name='user_homeview'),
    path('admin/', admin.site.urls),
    path('dashview/', views.dashview, name='dashview'),
    path('dhomeview/', views.dhomeview, name='dhomeview'),
    path('mailview/', views.mailview, name='mailview'),
    path('eventsview/', views.eventsview, name='eventsview'),
    path('mailcomposeview/', views.mailcomposeview, name='mailcomposeview'),
    path('loginview/', views.loginview, name='loginview'),
    path('hlistview/', views.hlistview, name='hlistview'),
    path('hremoveview/', views.hremoveview, name='hremoveview'),
    path('plistview/', views.plistview, name= 'plistview'),
    path('hrequestview/', views.hrequestview, name= 'hrequestview'),
    path('prequestview/', views.prequestview, name= 'prequestview'),
    path('arequestview/', views.arequestview, name= 'arequestview'),
    path('medi_listview/', views.medi_listview, name= 'medi_listview'),
    path('medi_newview/', views.medi_newview, name= 'medi_newview'),
    path('contactview/', views.contactview, name="contactview"),
    path('drlistview/', views.drlistview, name='drlistview'),
    path('stlistview/', views.stlistview, name='stlistview'),
    path('dptlistview/', views.dptlistview, name='dptlistview'),
    path('admin_logoutview/', views.admin_logoutview, name="admin_logoutview"),

    path('user_tempview/', userviews.user_tempview, name='user_tempview'),
    path('user_homeview/', userviews.user_homeview, name='user_homeview'),
    path('user_contactview/', userviews.user_contactview, name="user_contactview"),
    path('user_loginview/', userviews.user_loginview, name="user_loginview"),
    path('user_registerview/', userviews.user_registerview, name="user_registerview"),
    path('user_register_ptview/', userviews.user_register_ptview, name="user_register_ptview"),
    path('user_aboutview/', userviews.user_aboutview, name="user_aboutview"),
    path('SearchBlood/', userviews.SearchBlood, name="SearchBlood"),
    path('ViewCamp/', userviews.ViewCamp, name="ViewCamp"),
    path('ADDCAMP/', userviews.ADDCAMP, name="ADDCAMP"),
       path('updatedonation/', userviews.updatedonation, name="updatedonation"),
    path('donated/', userviews.donated, name="donated"),
    path('SearchBloodpublic/', userviews.SearchBloodpublic, name="SearchBloodpublic"),

    path('hos_tempview/', userviews.hos_tempview, name="hos_tempview"),
    path('hos_homeview/', userviews.hos_homeview, name="hos_homeview"),
    path('hos_dptview/', userviews.hos_dptview, name="hos_dptview"),
    path('hos_cardiologyview/', userviews.hos_cardiologyview, name="hos_cardiologyview"),
    path('hos_suggestview', userviews.hos_suggestview, name="hos_suggestview"),
    path('hos_adddptview/', userviews.hos_adddptview, name="hos_adddptview"),
    path('hos_addstaffview/', userviews.hos_addstaffview, name="hos_addstaffview"),
    path('hos_adddocview/', userviews.hos_adddocview, name="hos_adddocview"),
    path('hos_addpatview/', userviews.hos_addpatview, name="hos_addpatview"),
    path('hos_contactview/', userviews.hos_contactview, name="hos_contactview"),
    path('hos_leaveview/', userviews.hos_leaveview, name="hos_leaveview"),
    path('hos_editview/', userviews.hos_editview, name="hos_editview"),

    # doctor page views
    path('dr_tempview/', userviews.dr_tempview, name="dr_tempview"),
    path('dr_homeview/', userviews.dr_homeview, name="dr_homeview"),
    path('dr_dptview/', userviews.dr_dptview, name="dr_dptview"),
    path('dr_cardiologyview/', userviews.dr_cardiologyview, name="dr_cardiologyview"),
    path('dr_bookview/', userviews.dr_bookview, name="dr_bookview"),
    path('dr_leaveview/', userviews.dr_leaveview, name="dr_leaveview"),
    path('dr_suggestview/', userviews.dr_suggestview, name="dr_suggestview"),
    path('dr_chatview/', userviews.dr_chatview, name="dr_chatview"),
    path('dr_prescribeview/', userviews.dr_prescribeview, name="dr_prescribeview"),
    path('addmedicineview/', userviews.addmedicineview, name="addmedicineview"),
    path('testdeleteview/', userviews.testdeleteview, name="testdeleteview"),

    # Patient page views
    path('pt_tempview/', userviews.pt_tempview, name="pt_tempview"),
    path('pt_contactview/', userviews.pt_contactview, name="pt_contactview"),
    path('pt_homeview/', userviews.pt_homeview, name="pt_homeview"),
    path('pt_bookview/',userviews.pt_bookview, name="pt_bookview"),
    path('pt_prescribeview/', userviews.pt_prescribeview, name="pt_prescribeview"),
    path('pt_detailview/', userviews.pt_detailview, name="pt_detailview"),
    path('pt_diseaseview/',userviews.pt_diseaseview, name="pt_diseaseview"),


    # Staff Page Sections
    path('st_tempview/', userviews.st_tempview, name="st_tempview"),
    path('st_homeview/', userviews.st_homeview, name="st_homeview"),
    path('st_resultview/', userviews.st_resultview, name="st_resultview"),
    path('st_leaveview/', userviews.st_leaveview, name="st_leaveview"),
    path('st_prescribeview/', userviews.st_prescribeview, name="st_prescribeview"),
    path('result_addview/', userviews.result_addview, name="result_addview"),
    path('st_addview/', userviews.st_addview, name="st_addview"),
    path('resultdeleteview/', userviews.resultdeleteview, name="resultdeleteview"),
    path('st_bookview/', userviews.st_bookview, name="st_bookview"),

    

    #Logout Session
    path('logoutview/', userviews.logoutview, name="logoutview"),
    path('statusview/', userviews.statusview, name="statusview"),
    path('nu_statusview/', userviews.nu_statusview, name="nu_statusview"),
    path('st_statusview/', userviews.st_statusview, name="st_statusview"),
    path('subhosview/', userviews.subhosview, name="subhosview"),
    path('subdocview/', userviews.subdocview, name="subdocview"),
    path('subdocview1/', userviews.subdocview1, name="subdocview"),
    path('token_detail/', userviews.token_detail, name="token_detail"),

    path('testtab/', userviews.testtab, name="testtab"),
    path('diseaseview/', userviews.diseaseview, name="diseaseview"),
    path('med_addview/', userviews.med_addview, name="med_addview"),
    path('test_addview/', userviews.test_addview, name="test_addview"),
    path('st_emergencyview/', userviews.st_emergencyview, name="st_emergencyview"),
    path('patient_relativesview/', userviews.patient_relativesview, name="patient_relativesview"),
    path('st_contactview/', userviews.st_contactview, name="st_contactview"),
    path('requestorgan/', userviews.requestorgan, name="requestorgan"),
     path('addorgan/', userviews.addorgan, name="addorgan"),
    


]+staticfiles_urlpatterns()+static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
