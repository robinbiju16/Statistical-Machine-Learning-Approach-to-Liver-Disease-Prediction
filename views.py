from urllib import request

from django.http import (HttpResponse,HttpResponseRedirect)
from django.shortcuts import render

import MySQLdb
import smtplib 
import urllib.request
import webbrowser
from django.contrib import messages


def sendmail(toadd,msg):

    #create smtp session
    s = smtplib.SMTP('smtp.gmail.com',587)

    #start TLS for security
    s.starttls()

    #Authentication
    s.login("gmedifile@gmail.com","gmedifile123")

    #Message you need to be send
    
    #Sending the mail
    s.sendmail("gmedifile@gmail.com",toadd,msg)

    #terminating the session
    s.quit()
    
def sendsms(ph,msg):

    sendToPhoneNumber= "+91"+ph
    userid = "2000022557"
    passwd = "54321@lcc"
    url = "http://enterprise.smsgupshup.com/GatewayAPI/rest?method=sendMessage&send_to=" + sendToPhoneNumber + "&msg=" + msg + "&userid=" + userid + "&password=" + passwd + "&v=1.1&msg_type=TEXT&auth_scheme=PLAIN"
    # contents = urllib.request.urlopen(url)
    webbrowser.open(url)

#create db 

conn=MySQLdb.connect("localhost","root","","shareyourlife")
c = conn.cursor()

# Create your views here.

def dashview(request):
    h = "select count(*) from register"
    c.execute(h)
    data1 = c.fetchone()
    hos_count = data1[0]

    p = "select count(*) from addpat"
    c.execute(p)
    data2 = c.fetchone()
    patient_count = data2[0]

    f = "select count(*) from pt_contact"
    c.execute(f)
    data3 = c.fetchone()
    feed_count = data3[0]
    return render(request,"dashioadmin.html",{"data1":hos_count,"data2":patient_count,"data3":feed_count})

def dhomeview(request):
    return render(request,"dhome.html")

def mailview(request):
    return render(request,"mail.html")

def eventsview(request):
    return render(request,"events.html")

def mailcomposeview(request):
    return render(request,"mail_compose.html")

def loginview(request):
    alert = ""
    if(request.POST):
        name = request.POST.get("name")
        password =request.POST.get("password")
        if(name == "admin" and password == "admin123"):
            return HttpResponseRedirect("/dashview")
        else:
            alert ="Inavid User or Password"
    return render(request,"login.html",{"alert":alert})

def hlistview(request):
    d = "select * from register r join login l on (r.g_id = l.g_id)"
    c.execute(d)
    conn.commit()
    data =  c.fetchall()
    ddd = "select * from register r left join login l on (r.g_id = l.g_id) where l.g_id IS NULL"
    c.execute(ddd)
    conn.commit()
    data2 =  c.fetchall()
    print(data2)
    
    return render(request,"hlist.html",{"data":data,"data2":data2})

def hremoveview(request):
    g_id = request.GET.get("g_id")
    print(g_id)
    a = "delete from register where g_id='"+str(g_id)+"'"
    c.execute(a)
    return HttpResponseRedirect("/hlistview")
    
def hacceptview(request):
    g_id = request.GET.get("g_id")
    name = request.GET.get("name")
    passw = request.GET.get("pass")
    ph = request.GET.get("ph")
    mail = request.GET.get("mail")
    desg = "hospital"
    a = "insert into login(`g_id`,`name`,`password`,`designation`) values('"+str(g_id)+"','"+str(name)+"','"+str(passw)+"','"+str(desg)+"')"
    c.execute(a)
    conn.commit()
    msg="Welcome to Global Medifile\nRegistration Successfull\nLPlease Login using  Your Details : \n Username: "+name+"\n Password : "+passw+"\n Global ID : "+str(g_id)
    sendsms(ph,msg)
    sendmail(mail,msg)

    return HttpResponseRedirect("/hlistview")

def plistview(request):
    s =  "select * from addpat"
    c.execute(s)
    conn.commit()
    data = c.fetchall()
    return render(request,"plist.html",{"data":data})

def drlistview(request):
    s = "select * from adddoc"
    c.execute(s)
    data = c.fetchall()
    return render(request,"drlist.html",{"data":data})

def stlistview(request):
    s = "select * from addstaff"
    c.execute(s)
    data = c.fetchall()
    return render(request,"stlist.html",{"data":data})
    
def dptlistview(request):
    # hos_id = request.session["ug_id"]
    s =  "select * from adddpt"
    c.execute(s)
    data = c.fetchall()
    return render(request,"dptlist.html",{"data":data})

def hrequestview(request):
    return render(request,"hrequest.html")

def prequestview(request):
    return render(request,"prequest.html")

def arequestview(request):
    return render(request,"arequest.html")

def medi_listview(request):
    return render(request,"medi_list.html")

def medi_newview(request):
    return render(request,"medi_new.html")
    
def contactview(request):
    s = "select * from pt_contact"
    c.execute(s)
    conn.commit()
    data = c.fetchall()
    return render(request,"contact.html",{"data":data})

def admin_logoutview(request):
    for key in list(request.session.keys()):
        del request.session[key]
    return render(request,"admin_logout.html")