.class public Lcom/distriqt/core/auth/impl/AuthorisationBase;
.super Ljava/lang/Object;
.source "AuthorisationBase.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "AuthorisationBase"


# instance fields
.field protected _extContext:Lcom/distriqt/core/utils/IExtensionContext;

.field protected _listener:Lcom/distriqt/core/auth/AuthorisationRequestListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lcom/distriqt/core/auth/impl/AuthorisationBase;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    .line 45
    iput-object v0, p0, Lcom/distriqt/core/auth/impl/AuthorisationBase;->_listener:Lcom/distriqt/core/auth/AuthorisationRequestListener;

    return-void
.end method


# virtual methods
.method public onRequestPermissionsResult(I[Ljava/lang/String;[ILjava/lang/String;)V
    .locals 9

    const-string v0, "com.distriqt.corelibraries"

    .line 61
    sget-object v1, Lcom/distriqt/core/auth/impl/AuthorisationBase;->TAG:Ljava/lang/String;

    const-string v2, "onRequestPermissionsResult( %d, [%d], %s )"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    array-length v4, p3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    if-nez p4, :cond_0

    const-string v4, "null"

    goto :goto_0

    :cond_0
    move-object v4, p4

    :goto_0
    const/4 v7, 0x2

    aput-object v4, v3, v7

    invoke-static {v0, v1, v2, v3}, Lcom/distriqt/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0xb

    if-ne v0, p1, :cond_7

    .line 64
    iget-object p1, p0, Lcom/distriqt/core/auth/impl/AuthorisationBase;->_listener:Lcom/distriqt/core/auth/AuthorisationRequestListener;

    if-eqz p1, :cond_2

    .line 66
    iget-object p1, p0, Lcom/distriqt/core/auth/impl/AuthorisationBase;->_listener:Lcom/distriqt/core/auth/AuthorisationRequestListener;

    instance-of p1, p1, Lcom/distriqt/core/auth/AuthorisationRequestTypeListener;

    if-eqz p1, :cond_1

    .line 68
    iget-object p1, p0, Lcom/distriqt/core/auth/impl/AuthorisationBase;->_listener:Lcom/distriqt/core/auth/AuthorisationRequestListener;

    check-cast p1, Lcom/distriqt/core/auth/AuthorisationRequestTypeListener;

    invoke-interface {p1, p2, p3, p4}, Lcom/distriqt/core/auth/AuthorisationRequestTypeListener;->authorisationChangedWithType([Ljava/lang/String;[ILjava/lang/String;)V

    .line 74
    :cond_1
    iget-object p1, p0, Lcom/distriqt/core/auth/impl/AuthorisationBase;->_listener:Lcom/distriqt/core/auth/AuthorisationRequestListener;

    invoke-interface {p1, p2, p3}, Lcom/distriqt/core/auth/AuthorisationRequestListener;->authorisationChanged([Ljava/lang/String;[I)V

    goto :goto_3

    .line 78
    :cond_2
    iget-object p1, p0, Lcom/distriqt/core/auth/impl/AuthorisationBase;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    if-eqz p1, :cond_7

    .line 80
    iget-object p1, p0, Lcom/distriqt/core/auth/impl/AuthorisationBase;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    const-string v0, "authorisation:complete"

    const/4 v1, 0x0

    .line 82
    invoke-static {v1, p4}, Lcom/distriqt/core/auth/events/AuthorisationEvent;->formatForEvent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 80
    invoke-interface {p1, v0, v1}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    array-length p1, p3

    if-nez p1, :cond_3

    return-void

    :cond_3
    const-string p1, "authorised"

    move-object v0, p1

    const/4 p1, 0x0

    .line 88
    :goto_1
    array-length v1, p2

    if-ge p1, v1, :cond_6

    const-string v1, "com.distriqt.corelibraries"

    .line 90
    sget-object v2, Lcom/distriqt/core/auth/impl/AuthorisationBase;->TAG:Ljava/lang/String;

    const-string v3, "%s=%d"

    new-array v4, v7, [Ljava/lang/Object;

    aget-object v8, p2, p1

    aput-object v8, v4, v5

    aget v8, p3, p1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v6

    invoke-static {v1, v2, v3, v4}, Lcom/distriqt/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    aget v1, p3, p1

    if-eqz v1, :cond_5

    const-string v1, "denied"

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/distriqt/core/auth/impl/AuthorisationBase;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    .line 94
    invoke-interface {v0}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    aget-object v1, p2, p1

    invoke-static {v0, v1}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "should_explain"

    goto :goto_2

    :cond_4
    const-string v0, "denied"

    :cond_5
    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 105
    :cond_6
    iget-object p1, p0, Lcom/distriqt/core/auth/impl/AuthorisationBase;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    const-string p2, "authorisation:changed"

    .line 107
    invoke-static {v0, p4}, Lcom/distriqt/core/auth/events/AuthorisationEvent;->formatForEvent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 105
    invoke-interface {p1, p2, p3}, Lcom/distriqt/core/utils/IExtensionContext;->dispatchEvent(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_3
    return-void
.end method

.method public requestPermissions([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
