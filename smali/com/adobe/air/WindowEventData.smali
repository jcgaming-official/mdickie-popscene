.class public Lcom/adobe/air/WindowEventData;
.super Ljava/lang/Object;
.source "WindowEventData.java"


# static fields
.field static final DISPATCH_FULL_SCREEN:I = 0x8

.field static final FORCE_REDRAW:I = 0x5

.field static final ON_FORMAT_CHANGED:I = 0x4

.field static final ON_SIZE_CHANGED:I = 0x2

.field static final ORIENTATION_CHANGED:I = 0x3

.field static final SET_KEYBOARD_VISIBLE:I = 0x1

.field static final SHOW_ORIGINAL_RECT:I = 0x6

.field static final SK_DEACTIVATE:I = 0x7


# instance fields
.field mIntVal1:I

.field mIntVal2:I

.field mMsg:I

.field mVal:Z

.field surface:Lcom/adobe/air/AIRWindowSurfaceView;


# direct methods
.method public constructor <init>(Lcom/adobe/air/AIRWindowSurfaceView;IIIZ)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/adobe/air/WindowEventData;->surface:Lcom/adobe/air/AIRWindowSurfaceView;

    .line 54
    iput p2, p0, Lcom/adobe/air/WindowEventData;->mMsg:I

    .line 55
    iput p3, p0, Lcom/adobe/air/WindowEventData;->mIntVal1:I

    .line 56
    iput p4, p0, Lcom/adobe/air/WindowEventData;->mIntVal2:I

    .line 57
    iput-boolean p5, p0, Lcom/adobe/air/WindowEventData;->mVal:Z

    return-void
.end method

.method public constructor <init>(Lcom/adobe/air/AIRWindowSurfaceView;IZ)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/adobe/air/WindowEventData;->surface:Lcom/adobe/air/AIRWindowSurfaceView;

    .line 48
    iput p2, p0, Lcom/adobe/air/WindowEventData;->mMsg:I

    .line 49
    iput-boolean p3, p0, Lcom/adobe/air/WindowEventData;->mVal:Z

    return-void
.end method


# virtual methods
.method public run()Z
    .locals 4

    .line 62
    iget v0, p0, Lcom/adobe/air/WindowEventData;->mMsg:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 86
    :pswitch_0
    iget-object v0, p0, Lcom/adobe/air/WindowEventData;->surface:Lcom/adobe/air/AIRWindowSurfaceView;

    iget-boolean v1, p0, Lcom/adobe/air/WindowEventData;->mVal:Z

    invoke-virtual {v0, v1}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeDispatchFullScreenEvent(Z)V

    goto :goto_0

    .line 83
    :pswitch_1
    iget-object v0, p0, Lcom/adobe/air/WindowEventData;->surface:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeDispatchUserTriggeredSkDeactivateEvent()V

    goto :goto_0

    .line 80
    :pswitch_2
    iget-object v0, p0, Lcom/adobe/air/WindowEventData;->surface:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeShowOriginalRect()V

    goto :goto_0

    .line 77
    :pswitch_3
    iget-object v0, p0, Lcom/adobe/air/WindowEventData;->surface:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeForceReDraw()V

    goto :goto_0

    .line 74
    :pswitch_4
    iget-object v0, p0, Lcom/adobe/air/WindowEventData;->surface:Lcom/adobe/air/AIRWindowSurfaceView;

    iget v1, p0, Lcom/adobe/air/WindowEventData;->mIntVal1:I

    invoke-virtual {v0, v1}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeOnFormatChangeListener(I)V

    goto :goto_0

    .line 71
    :pswitch_5
    invoke-static {}, Lcom/adobe/air/OrientationManager;->getOrientationManager()Lcom/adobe/air/OrientationManager;

    move-result-object v0

    iget v1, p0, Lcom/adobe/air/WindowEventData;->mIntVal1:I

    iget v2, p0, Lcom/adobe/air/WindowEventData;->mIntVal2:I

    invoke-virtual {v0, v1, v2}, Lcom/adobe/air/OrientationManager;->nativeOrientationChanged(II)V

    goto :goto_0

    .line 68
    :pswitch_6
    iget-object v0, p0, Lcom/adobe/air/WindowEventData;->surface:Lcom/adobe/air/AIRWindowSurfaceView;

    iget v1, p0, Lcom/adobe/air/WindowEventData;->mIntVal1:I

    iget v2, p0, Lcom/adobe/air/WindowEventData;->mIntVal2:I

    iget-boolean v3, p0, Lcom/adobe/air/WindowEventData;->mVal:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeOnSizeChangedListener(IIZ)V

    goto :goto_0

    .line 65
    :pswitch_7
    iget-object v0, p0, Lcom/adobe/air/WindowEventData;->surface:Lcom/adobe/air/AIRWindowSurfaceView;

    iget-boolean v1, p0, Lcom/adobe/air/WindowEventData;->mVal:Z

    invoke-virtual {v0, v1}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeSetKeyboardVisible(Z)V

    :goto_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
