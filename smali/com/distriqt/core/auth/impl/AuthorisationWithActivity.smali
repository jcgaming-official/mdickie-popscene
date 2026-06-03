.class public Lcom/distriqt/core/auth/impl/AuthorisationWithActivity;
.super Lcom/distriqt/core/auth/impl/AuthorisationBase;
.source "AuthorisationWithActivity.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "AuthorisationWithActivity"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/distriqt/core/utils/IExtensionContext;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/distriqt/core/auth/impl/AuthorisationBase;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/distriqt/core/auth/impl/AuthorisationWithActivity;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    return-void
.end method

.method public constructor <init>(Lcom/distriqt/core/utils/IExtensionContext;Lcom/distriqt/core/auth/AuthorisationRequestListener;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/distriqt/core/auth/impl/AuthorisationBase;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/distriqt/core/auth/impl/AuthorisationWithActivity;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    .line 61
    iput-object p2, p0, Lcom/distriqt/core/auth/impl/AuthorisationWithActivity;->_listener:Lcom/distriqt/core/auth/AuthorisationRequestListener;

    return-void
.end method

.method public constructor <init>(Lcom/distriqt/core/utils/IExtensionContext;Lcom/distriqt/core/auth/AuthorisationRequestTypeListener;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/distriqt/core/auth/impl/AuthorisationBase;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/distriqt/core/auth/impl/AuthorisationWithActivity;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    .line 54
    iput-object p2, p0, Lcom/distriqt/core/auth/impl/AuthorisationWithActivity;->_listener:Lcom/distriqt/core/auth/AuthorisationRequestListener;

    return-void
.end method


# virtual methods
.method public requestPermissions([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const-string v0, "com.distriqt.corelibraries"

    .line 67
    sget-object v1, Lcom/distriqt/core/auth/impl/AuthorisationWithActivity;->TAG:Ljava/lang/String;

    const-string v2, "requestPermissions(): use activity"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v4}, Lcom/distriqt/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 72
    sput-object p0, Lcom/distriqt/core/auth/AuthorisationActivity;->authorisation:Lcom/distriqt/core/auth/impl/AuthorisationBase;

    .line 73
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/distriqt/core/auth/impl/AuthorisationWithActivity;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v1}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/distriqt/core/auth/AuthorisationActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "extra_permissions"

    .line 74
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p2, :cond_0

    const-string p1, "extra_authType"

    .line 77
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    :cond_0
    iget-object p1, p0, Lcom/distriqt/core/auth/impl/AuthorisationWithActivity;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {p1}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 85
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return v3
.end method
