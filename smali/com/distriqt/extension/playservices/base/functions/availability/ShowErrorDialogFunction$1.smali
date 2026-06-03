.class Lcom/distriqt/extension/playservices/base/functions/availability/ShowErrorDialogFunction$1;
.super Ljava/lang/Object;
.source "ShowErrorDialogFunction.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/distriqt/extension/playservices/base/functions/availability/ShowErrorDialogFunction;->call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/distriqt/extension/playservices/base/functions/availability/ShowErrorDialogFunction;


# direct methods
.method constructor <init>(Lcom/distriqt/extension/playservices/base/functions/availability/ShowErrorDialogFunction;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/distriqt/extension/playservices/base/functions/availability/ShowErrorDialogFunction$1;->this$0:Lcom/distriqt/extension/playservices/base/functions/availability/ShowErrorDialogFunction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3

    .line 50
    sget-object p1, Lcom/distriqt/extension/playservices/base/PlayServicesBase;->ID:Ljava/lang/String;

    sget-object v0, Lcom/distriqt/extension/playservices/base/functions/availability/ShowErrorDialogFunction;->TAG:Ljava/lang/String;

    const-string v1, "onCancel"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, v0, v1, v2}, Lcom/distriqt/core/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
