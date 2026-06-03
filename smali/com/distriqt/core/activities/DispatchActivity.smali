.class public Lcom/distriqt/core/activities/DispatchActivity;
.super Landroid/app/Activity;
.source "DispatchActivity.java"


# static fields
.field public static final EXTRA_REQUESTCODE:Ljava/lang/String; = "extraRequestCode"

.field public static final TAG:Ljava/lang/String; = "DispatchActivity"

.field public static resultHandler:Lcom/distriqt/core/utils/IActivityResultHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static startActivityForResult(Landroid/content/Context;Landroid/content/Intent;ILcom/distriqt/core/utils/IActivityResultHandler;)V
    .locals 1

    .line 60
    :try_start_0
    sput-object p3, Lcom/distriqt/core/activities/DispatchActivity;->resultHandler:Lcom/distriqt/core/utils/IActivityResultHandler;

    .line 62
    new-instance p3, Landroid/content/Intent;

    const-class v0, Lcom/distriqt/core/activities/DispatchActivity;

    invoke-direct {p3, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "android.intent.extra.INTENT"

    .line 63
    invoke-virtual {p3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "extraRequestCode"

    .line 64
    invoke-virtual {p3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 66
    invoke-virtual {p0, p3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 70
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 95
    sget-object v0, Lcom/distriqt/core/activities/DispatchActivity;->resultHandler:Lcom/distriqt/core/utils/IActivityResultHandler;

    if-eqz v0, :cond_0

    .line 97
    sget-object v0, Lcom/distriqt/core/activities/DispatchActivity;->resultHandler:Lcom/distriqt/core/utils/IActivityResultHandler;

    invoke-interface {v0, p1, p2, p3}, Lcom/distriqt/core/utils/IActivityResultHandler;->onActivityResult(IILandroid/content/Intent;)V

    .line 99
    :cond_0
    invoke-virtual {p0}, Lcom/distriqt/core/activities/DispatchActivity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 78
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    :try_start_0
    invoke-virtual {p0}, Lcom/distriqt/core/activities/DispatchActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "extraRequestCode"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 82
    invoke-virtual {p0}, Lcom/distriqt/core/activities/DispatchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.INTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 83
    invoke-virtual {p0, v0, p1}, Lcom/distriqt/core/activities/DispatchActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 87
    :catch_0
    invoke-virtual {p0}, Lcom/distriqt/core/activities/DispatchActivity;->finish()V

    :goto_0
    return-void
.end method
