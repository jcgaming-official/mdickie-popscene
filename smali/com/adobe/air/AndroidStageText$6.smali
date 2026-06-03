.class Lcom/adobe/air/AndroidStageText$6;
.super Ljava/lang/Object;
.source "AndroidStageText.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adobe/air/AndroidStageText;->setClipBounds(DDDD)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/air/AndroidStageText;

.field final synthetic val$height:D

.field final synthetic val$width:D

.field final synthetic val$x:D

.field final synthetic val$y:D


# direct methods
.method constructor <init>(Lcom/adobe/air/AndroidStageText;DDDD)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 171
    iput-object p1, p0, Lcom/adobe/air/AndroidStageText$6;->this$0:Lcom/adobe/air/AndroidStageText;

    iput-wide p2, p0, Lcom/adobe/air/AndroidStageText$6;->val$x:D

    iput-wide p4, p0, Lcom/adobe/air/AndroidStageText$6;->val$y:D

    iput-wide p6, p0, Lcom/adobe/air/AndroidStageText$6;->val$width:D

    iput-wide p8, p0, Lcom/adobe/air/AndroidStageText$6;->val$height:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 174
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText$6;->this$0:Lcom/adobe/air/AndroidStageText;

    invoke-static {v0}, Lcom/adobe/air/AndroidStageText;->access$000(Lcom/adobe/air/AndroidStageText;)Lcom/adobe/air/AndroidStageTextAsync;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 175
    iget-wide v2, p0, Lcom/adobe/air/AndroidStageText$6;->val$x:D

    iget-wide v4, p0, Lcom/adobe/air/AndroidStageText$6;->val$y:D

    iget-wide v6, p0, Lcom/adobe/air/AndroidStageText$6;->val$width:D

    iget-wide v8, p0, Lcom/adobe/air/AndroidStageText$6;->val$height:D

    invoke-virtual/range {v1 .. v9}, Lcom/adobe/air/AndroidStageTextAsync;->setClipBounds(DDDD)V

    :cond_0
    return-void
.end method
