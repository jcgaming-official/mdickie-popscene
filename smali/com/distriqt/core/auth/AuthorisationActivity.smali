.class public Lcom/distriqt/core/auth/AuthorisationActivity;
.super Landroid/app/Activity;
.source "AuthorisationActivity.java"


# static fields
.field public static final EXTRA_AUTHTYPE:Ljava/lang/String; = "extra_authType"

.field public static final EXTRA_PERMISSIONS:Ljava/lang/String; = "extra_permissions"

.field private static final TAG:Ljava/lang/String; = "AuthorisationActivity"

.field public static authorisation:Lcom/distriqt/core/auth/impl/AuthorisationBase;


# instance fields
.field private _permissions:[Ljava/lang/String;

.field private _type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 42
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-virtual {p0}, Lcom/distriqt/core/auth/AuthorisationActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x2000

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    .line 46
    :try_start_0
    invoke-virtual {p0}, Lcom/distriqt/core/auth/AuthorisationActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "extra_permissions"

    .line 47
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/distriqt/core/auth/AuthorisationActivity;->_permissions:[Ljava/lang/String;

    const-string v0, "extra_authType"

    .line 48
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/distriqt/core/auth/AuthorisationActivity;->_type:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    .line 84
    sget-object v0, Lcom/distriqt/core/auth/AuthorisationActivity;->authorisation:Lcom/distriqt/core/auth/impl/AuthorisationBase;

    iget-object v1, p0, Lcom/distriqt/core/auth/AuthorisationActivity;->_type:Ljava/lang/String;

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/distriqt/core/auth/impl/AuthorisationBase;->onRequestPermissionsResult(I[Ljava/lang/String;[ILjava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Lcom/distriqt/core/auth/AuthorisationActivity;->finish()V

    return-void
.end method

.method protected onStart()V
    .locals 5

    .line 59
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 61
    iget-object v0, p0, Lcom/distriqt/core/auth/AuthorisationActivity;->_permissions:[Ljava/lang/String;

    array-length v0, v0

    const/16 v1, 0xb

    if-nez v0, :cond_0

    .line 63
    sget-object v0, Lcom/distriqt/core/auth/AuthorisationActivity;->authorisation:Lcom/distriqt/core/auth/impl/AuthorisationBase;

    iget-object v2, p0, Lcom/distriqt/core/auth/AuthorisationActivity;->_permissions:[Ljava/lang/String;

    const/4 v3, 0x0

    new-array v3, v3, [I

    iget-object v4, p0, Lcom/distriqt/core/auth/AuthorisationActivity;->_type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/distriqt/core/auth/impl/AuthorisationBase;->onRequestPermissionsResult(I[Ljava/lang/String;[ILjava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Lcom/distriqt/core/auth/AuthorisationActivity;->finish()V

    return-void

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/distriqt/core/auth/AuthorisationActivity;->_permissions:[Ljava/lang/String;

    invoke-static {p0, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method
