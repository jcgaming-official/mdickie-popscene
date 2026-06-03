.class public Lcom/distriqt/core/auth/Authorisation;
.super Ljava/lang/Object;
.source "Authorisation.java"


# static fields
.field public static final PERMISSIONS_REQUEST:I = 0xb

.field private static final TAG:Ljava/lang/String; = "Authorisation"


# instance fields
.field private _authorisation:Lcom/distriqt/core/auth/impl/AuthorisationBase;

.field private _extContext:Lcom/distriqt/core/utils/IExtensionContext;

.field private _listener:Lcom/distriqt/core/auth/AuthorisationRequestListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/distriqt/core/utils/IExtensionContext;)V
    .locals 5

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lcom/distriqt/core/auth/Authorisation;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    .line 47
    iput-object v0, p0, Lcom/distriqt/core/auth/Authorisation;->_listener:Lcom/distriqt/core/auth/AuthorisationRequestListener;

    .line 49
    iput-object v0, p0, Lcom/distriqt/core/auth/Authorisation;->_authorisation:Lcom/distriqt/core/auth/impl/AuthorisationBase;

    .line 54
    iput-object p1, p0, Lcom/distriqt/core/auth/Authorisation;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    :try_start_0
    const-string v0, "com.adobe.air.AndroidActivityWrapper$RequestPermissionsResultCallback"

    .line 57
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 58
    new-instance v0, Lcom/distriqt/core/auth/impl/AuthorisationWithAIRCallback;

    invoke-direct {v0, p1}, Lcom/distriqt/core/auth/impl/AuthorisationWithAIRCallback;-><init>(Lcom/distriqt/core/utils/IExtensionContext;)V

    iput-object v0, p0, Lcom/distriqt/core/auth/Authorisation;->_authorisation:Lcom/distriqt/core/auth/impl/AuthorisationBase;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "com.distriqt.corelibraries"

    .line 62
    sget-object v2, Lcom/distriqt/core/auth/Authorisation;->TAG:Ljava/lang/String;

    const-string v3, "AIR permissions result callback not found"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v4}, Lcom/distriqt/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 66
    :goto_0
    iget-object v0, p0, Lcom/distriqt/core/auth/Authorisation;->_authorisation:Lcom/distriqt/core/auth/impl/AuthorisationBase;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Lcom/distriqt/core/auth/impl/AuthorisationWithActivity;

    invoke-direct {v0, p1}, Lcom/distriqt/core/auth/impl/AuthorisationWithActivity;-><init>(Lcom/distriqt/core/utils/IExtensionContext;)V

    iput-object v0, p0, Lcom/distriqt/core/auth/Authorisation;->_authorisation:Lcom/distriqt/core/auth/impl/AuthorisationBase;

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/distriqt/core/utils/IExtensionContext;Lcom/distriqt/core/auth/AuthorisationRequestListener;)V
    .locals 5

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lcom/distriqt/core/auth/Authorisation;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    .line 47
    iput-object v0, p0, Lcom/distriqt/core/auth/Authorisation;->_listener:Lcom/distriqt/core/auth/AuthorisationRequestListener;

    .line 49
    iput-object v0, p0, Lcom/distriqt/core/auth/Authorisation;->_authorisation:Lcom/distriqt/core/auth/impl/AuthorisationBase;

    .line 97
    iput-object p1, p0, Lcom/distriqt/core/auth/Authorisation;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    .line 98
    iput-object p2, p0, Lcom/distriqt/core/auth/Authorisation;->_listener:Lcom/distriqt/core/auth/AuthorisationRequestListener;

    :try_start_0
    const-string v0, "com.adobe.air.AndroidActivityWrapper$RequestPermissionsResultCallback"

    .line 101
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 102
    new-instance v0, Lcom/distriqt/core/auth/impl/AuthorisationWithAIRCallback;

    invoke-direct {v0, p1, p2}, Lcom/distriqt/core/auth/impl/AuthorisationWithAIRCallback;-><init>(Lcom/distriqt/core/utils/IExtensionContext;Lcom/distriqt/core/auth/AuthorisationRequestListener;)V

    iput-object v0, p0, Lcom/distriqt/core/auth/Authorisation;->_authorisation:Lcom/distriqt/core/auth/impl/AuthorisationBase;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "com.distriqt.corelibraries"

    .line 106
    sget-object v2, Lcom/distriqt/core/auth/Authorisation;->TAG:Ljava/lang/String;

    const-string v3, "New permissions result callback not found"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v4}, Lcom/distriqt/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 110
    :goto_0
    iget-object v0, p0, Lcom/distriqt/core/auth/Authorisation;->_authorisation:Lcom/distriqt/core/auth/impl/AuthorisationBase;

    if-nez v0, :cond_0

    .line 112
    new-instance v0, Lcom/distriqt/core/auth/impl/AuthorisationWithActivity;

    invoke-direct {v0, p1, p2}, Lcom/distriqt/core/auth/impl/AuthorisationWithActivity;-><init>(Lcom/distriqt/core/utils/IExtensionContext;Lcom/distriqt/core/auth/AuthorisationRequestListener;)V

    iput-object v0, p0, Lcom/distriqt/core/auth/Authorisation;->_authorisation:Lcom/distriqt/core/auth/impl/AuthorisationBase;

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/distriqt/core/utils/IExtensionContext;Lcom/distriqt/core/auth/AuthorisationRequestTypeListener;)V
    .locals 5

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lcom/distriqt/core/auth/Authorisation;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    .line 47
    iput-object v0, p0, Lcom/distriqt/core/auth/Authorisation;->_listener:Lcom/distriqt/core/auth/AuthorisationRequestListener;

    .line 49
    iput-object v0, p0, Lcom/distriqt/core/auth/Authorisation;->_authorisation:Lcom/distriqt/core/auth/impl/AuthorisationBase;

    .line 75
    iput-object p1, p0, Lcom/distriqt/core/auth/Authorisation;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    .line 76
    iput-object p2, p0, Lcom/distriqt/core/auth/Authorisation;->_listener:Lcom/distriqt/core/auth/AuthorisationRequestListener;

    :try_start_0
    const-string v0, "com.adobe.air.AndroidActivityWrapper$RequestPermissionsResultCallback"

    .line 79
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 80
    new-instance v0, Lcom/distriqt/core/auth/impl/AuthorisationWithAIRCallback;

    invoke-direct {v0, p1, p2}, Lcom/distriqt/core/auth/impl/AuthorisationWithAIRCallback;-><init>(Lcom/distriqt/core/utils/IExtensionContext;Lcom/distriqt/core/auth/AuthorisationRequestTypeListener;)V

    iput-object v0, p0, Lcom/distriqt/core/auth/Authorisation;->_authorisation:Lcom/distriqt/core/auth/impl/AuthorisationBase;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "com.distriqt.corelibraries"

    .line 84
    sget-object v2, Lcom/distriqt/core/auth/Authorisation;->TAG:Ljava/lang/String;

    const-string v3, "AIR permissions result callback not found"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v4}, Lcom/distriqt/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 88
    :goto_0
    iget-object v0, p0, Lcom/distriqt/core/auth/Authorisation;->_authorisation:Lcom/distriqt/core/auth/impl/AuthorisationBase;

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Lcom/distriqt/core/auth/impl/AuthorisationWithActivity;

    invoke-direct {v0, p1, p2}, Lcom/distriqt/core/auth/impl/AuthorisationWithActivity;-><init>(Lcom/distriqt/core/utils/IExtensionContext;Lcom/distriqt/core/auth/AuthorisationRequestTypeListener;)V

    iput-object v0, p0, Lcom/distriqt/core/auth/Authorisation;->_authorisation:Lcom/distriqt/core/auth/impl/AuthorisationBase;

    :cond_0
    return-void
.end method

.method public static filterOptionalPermissionsFromManifest(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)[Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    if-eqz p2, :cond_2

    .line 122
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 124
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 125
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x1000

    invoke-virtual {p1, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 126
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const/4 v1, 0x0

    .line 128
    :goto_0
    iget-object v2, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 130
    iget-object v2, p0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 132
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 140
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 142
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    const-class p2, [Ljava/lang/String;

    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public hasPermission(Ljava/lang/String;)Z
    .locals 7

    .line 161
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x17

    if-lt v0, v3, :cond_0

    .line 163
    iget-object v0, p0, Lcom/distriqt/core/auth/Authorisation;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v0}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/distriqt/core/auth/Authorisation;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v0}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    :goto_1
    const-string v3, "com.distriqt.corelibraries"

    .line 171
    sget-object v4, Lcom/distriqt/core/auth/Authorisation;->TAG:Ljava/lang/String;

    const-string v5, "hasPermission( %s )=%s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v2

    if-eqz v0, :cond_2

    const-string p1, "true"

    goto :goto_2

    :cond_2
    const-string p1, "false"

    :goto_2
    aput-object p1, v6, v1

    invoke-static {v3, v4, v5, v6}, Lcom/distriqt/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method

.method public hasPermissions([Ljava/lang/String;)Z
    .locals 5

    const-string v0, "com.distriqt.corelibraries"

    .line 148
    sget-object v1, Lcom/distriqt/core/auth/Authorisation;->TAG:Ljava/lang/String;

    const-string v2, "hasPermissions()"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v4}, Lcom/distriqt/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 150
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 152
    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Lcom/distriqt/core/auth/Authorisation;->hasPermission(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public requestPermissions([Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 178
    invoke-virtual {p0, p1, v0}, Lcom/distriqt/core/auth/Authorisation;->requestPermissions([Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public requestPermissions([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    .line 186
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_1

    .line 188
    iget-object v1, p0, Lcom/distriqt/core/auth/Authorisation;->_authorisation:Lcom/distriqt/core/auth/impl/AuthorisationBase;

    if-nez v1, :cond_0

    return v0

    .line 191
    :cond_0
    iget-object v1, p0, Lcom/distriqt/core/auth/Authorisation;->_authorisation:Lcom/distriqt/core/auth/impl/AuthorisationBase;

    invoke-virtual {v1, p1, p2}, Lcom/distriqt/core/auth/impl/AuthorisationBase;->requestPermissions([Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 197
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public shouldExplainPermission(Ljava/lang/String;)Z
    .locals 5

    const-string v0, "com.distriqt.corelibraries"

    .line 217
    sget-object v1, Lcom/distriqt/core/auth/Authorisation;->TAG:Ljava/lang/String;

    const-string v2, "shouldExplainPermission( %s )"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/distriqt/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 218
    iget-object v0, p0, Lcom/distriqt/core/auth/Authorisation;->_extContext:Lcom/distriqt/core/utils/IExtensionContext;

    invoke-interface {v0}, Lcom/distriqt/core/utils/IExtensionContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public shouldExplainPermissions([Ljava/lang/String;)Z
    .locals 5

    const-string v0, "com.distriqt.corelibraries"

    .line 205
    sget-object v1, Lcom/distriqt/core/auth/Authorisation;->TAG:Ljava/lang/String;

    const-string v2, "shouldExplainPermissions()"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v4}, Lcom/distriqt/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 207
    :goto_0
    array-length v1, p1

    if-ge v3, v1, :cond_1

    .line 209
    aget-object v1, p1, v3

    invoke-virtual {p0, v1}, Lcom/distriqt/core/auth/Authorisation;->shouldExplainPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method
