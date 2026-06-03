.class public Lcom/distriqt/core/auth/impl/AuthorisationWithAIRCallback;
.super Lcom/distriqt/core/auth/impl/AuthorisationBase;
.source "AuthorisationWithAIRCallback.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "AuthorisationWithAIRCallback"


# instance fields
.field private _aaw:Lcom/adobe/air/AndroidActivityWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/distriqt/core/utils/IExtensionContext;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/distriqt/core/auth/impl/AuthorisationBase;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/distriqt/core/auth/impl/AuthorisationWithAIRCallback;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    .line 54
    :try_start_0
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object p1

    iput-object p1, p0, Lcom/distriqt/core/auth/impl/AuthorisationWithAIRCallback;->_aaw:Lcom/adobe/air/AndroidActivityWrapper;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 58
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public constructor <init>(Lcom/distriqt/core/utils/IExtensionContext;Lcom/distriqt/core/auth/AuthorisationRequestListener;)V
    .locals 0

    .line 79
    invoke-direct {p0}, Lcom/distriqt/core/auth/impl/AuthorisationBase;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/distriqt/core/auth/impl/AuthorisationWithAIRCallback;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    .line 81
    iput-object p2, p0, Lcom/distriqt/core/auth/impl/AuthorisationWithAIRCallback;->_listener:Lcom/distriqt/core/auth/AuthorisationRequestListener;

    .line 84
    :try_start_0
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object p1

    iput-object p1, p0, Lcom/distriqt/core/auth/impl/AuthorisationWithAIRCallback;->_aaw:Lcom/adobe/air/AndroidActivityWrapper;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 88
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public constructor <init>(Lcom/distriqt/core/utils/IExtensionContext;Lcom/distriqt/core/auth/AuthorisationRequestTypeListener;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/distriqt/core/auth/impl/AuthorisationBase;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/distriqt/core/auth/impl/AuthorisationWithAIRCallback;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    .line 66
    iput-object p2, p0, Lcom/distriqt/core/auth/impl/AuthorisationWithAIRCallback;->_listener:Lcom/distriqt/core/auth/AuthorisationRequestListener;

    .line 69
    :try_start_0
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object p1

    iput-object p1, p0, Lcom/distriqt/core/auth/impl/AuthorisationWithAIRCallback;->_aaw:Lcom/adobe/air/AndroidActivityWrapper;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 73
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/distriqt/core/auth/impl/AuthorisationWithAIRCallback;)Lcom/adobe/air/AndroidActivityWrapper;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/distriqt/core/auth/impl/AuthorisationWithAIRCallback;->_aaw:Lcom/adobe/air/AndroidActivityWrapper;

    return-object p0
.end method


# virtual methods
.method public requestPermissions([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const-string v0, "com.distriqt.corelibraries"

    .line 95
    sget-object v1, Lcom/distriqt/core/auth/impl/AuthorisationWithAIRCallback;->TAG:Ljava/lang/String;

    const-string v2, "requestPermissions(): use AIR callback"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v4}, Lcom/distriqt/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 100
    iget-object v0, p0, Lcom/distriqt/core/auth/impl/AuthorisationWithAIRCallback;->_aaw:Lcom/adobe/air/AndroidActivityWrapper;

    new-instance v1, Lcom/distriqt/core/auth/impl/AuthorisationWithAIRCallback$1;

    invoke-direct {v1, p0, p2}, Lcom/distriqt/core/auth/impl/AuthorisationWithAIRCallback$1;-><init>(Lcom/distriqt/core/auth/impl/AuthorisationWithAIRCallback;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/adobe/air/AndroidActivityWrapper;->addRequestPermissionsResultListener(Lcom/adobe/air/AndroidActivityWrapper$RequestPermissionsResultCallback;)V

    .line 113
    iget-object p2, p0, Lcom/distriqt/core/auth/impl/AuthorisationWithAIRCallback;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    .line 114
    invoke-interface {p2}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object p2

    const/16 v0, 0xb

    .line 113
    invoke-static {p2, p1, v0}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 123
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return v3
.end method
