.class Lcom/distriqt/core/auth/impl/AuthorisationWithAIRCallback$1;
.super Ljava/lang/Object;
.source "AuthorisationWithAIRCallback.java"

# interfaces
.implements Lcom/adobe/air/AndroidActivityWrapper$RequestPermissionsResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/distriqt/core/auth/impl/AuthorisationWithAIRCallback;->requestPermissions([Ljava/lang/String;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/distriqt/core/auth/impl/AuthorisationWithAIRCallback;

.field final synthetic val$authRequestType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/distriqt/core/auth/impl/AuthorisationWithAIRCallback;Ljava/lang/String;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/distriqt/core/auth/impl/AuthorisationWithAIRCallback$1;->this$0:Lcom/distriqt/core/auth/impl/AuthorisationWithAIRCallback;

    iput-object p2, p0, Lcom/distriqt/core/auth/impl/AuthorisationWithAIRCallback$1;->val$authRequestType:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/distriqt/core/auth/impl/AuthorisationWithAIRCallback$1;->this$0:Lcom/distriqt/core/auth/impl/AuthorisationWithAIRCallback;

    invoke-static {v0}, Lcom/distriqt/core/auth/impl/AuthorisationWithAIRCallback;->access$000(Lcom/distriqt/core/auth/impl/AuthorisationWithAIRCallback;)Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/adobe/air/AndroidActivityWrapper;->removeRequestPermissionsResultListener(Lcom/adobe/air/AndroidActivityWrapper$RequestPermissionsResultCallback;)V

    .line 106
    iget-object v0, p0, Lcom/distriqt/core/auth/impl/AuthorisationWithAIRCallback$1;->this$0:Lcom/distriqt/core/auth/impl/AuthorisationWithAIRCallback;

    iget-object v1, p0, Lcom/distriqt/core/auth/impl/AuthorisationWithAIRCallback$1;->val$authRequestType:Ljava/lang/String;

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/distriqt/core/auth/impl/AuthorisationWithAIRCallback;->onRequestPermissionsResult(I[Ljava/lang/String;[ILjava/lang/String;)V

    return-void
.end method
