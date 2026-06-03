.class public Lcom/distriqt/extension/playservices/base/functions/availability/ShowErrorDialogFunction;
.super Ljava/lang/Object;
.source "ShowErrorDialogFunction.java"

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# static fields
.field public static final PLAY_SERVICES_REQUESTCODE:I = 0x184de

.field public static final TAG:Ljava/lang/String; = "ShowErrorDialogFunction"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 4

    const/4 v0, 0x0

    .line 42
    :try_start_0
    aget-object p2, p2, v0

    invoke-virtual {p2}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result p2

    .line 44
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    .line 45
    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x184de

    new-instance v3, Lcom/distriqt/extension/playservices/base/functions/availability/ShowErrorDialogFunction$1;

    invoke-direct {v3, p0}, Lcom/distriqt/extension/playservices/base/functions/availability/ShowErrorDialogFunction$1;-><init>(Lcom/distriqt/extension/playservices/base/functions/availability/ShowErrorDialogFunction;)V

    invoke-virtual {v0, v1, p2, v2, v3}, Lcom/google/android/gms/common/GoogleApiAvailability;->getErrorDialog(Landroid/app/Activity;IILandroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object p2

    .line 52
    invoke-virtual {p2}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 56
    invoke-static {p1, p2}, Lcom/distriqt/core/utils/FREUtils;->handleException(Lcom/adobe/fre/FREContext;Ljava/lang/Throwable;)V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
