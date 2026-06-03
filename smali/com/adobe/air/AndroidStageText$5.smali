.class Lcom/adobe/air/AndroidStageText$5;
.super Ljava/lang/Object;
.source "AndroidStageText.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adobe/air/AndroidStageText;->adjustViewBounds(DDDDD)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/air/AndroidStageText;

.field final synthetic val$height:D

.field final synthetic val$scaleFactor:D

.field final synthetic val$width:D

.field final synthetic val$x:D

.field final synthetic val$y:D


# direct methods
.method constructor <init>(Lcom/adobe/air/AndroidStageText;DDDDD)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 160
    iput-object p1, p0, Lcom/adobe/air/AndroidStageText$5;->this$0:Lcom/adobe/air/AndroidStageText;

    iput-wide p2, p0, Lcom/adobe/air/AndroidStageText$5;->val$x:D

    iput-wide p4, p0, Lcom/adobe/air/AndroidStageText$5;->val$y:D

    iput-wide p6, p0, Lcom/adobe/air/AndroidStageText$5;->val$width:D

    iput-wide p8, p0, Lcom/adobe/air/AndroidStageText$5;->val$height:D

    iput-wide p10, p0, Lcom/adobe/air/AndroidStageText$5;->val$scaleFactor:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 163
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText$5;->this$0:Lcom/adobe/air/AndroidStageText;

    invoke-static {v0}, Lcom/adobe/air/AndroidStageText;->access$000(Lcom/adobe/air/AndroidStageText;)Lcom/adobe/air/AndroidStageTextAsync;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 164
    iget-wide v2, p0, Lcom/adobe/air/AndroidStageText$5;->val$x:D

    iget-wide v4, p0, Lcom/adobe/air/AndroidStageText$5;->val$y:D

    iget-wide v6, p0, Lcom/adobe/air/AndroidStageText$5;->val$width:D

    iget-wide v8, p0, Lcom/adobe/air/AndroidStageText$5;->val$height:D

    iget-wide v10, p0, Lcom/adobe/air/AndroidStageText$5;->val$scaleFactor:D

    invoke-virtual/range {v1 .. v11}, Lcom/adobe/air/AndroidStageTextAsync;->adjustViewBounds(DDDDD)V

    :cond_0
    return-void
.end method
