.class public Lcom/adobe/air/AndroidInputManager;
.super Ljava/lang/Object;
.source "AndroidInputManager.java"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;
.implements Lcom/adobe/air/AndroidActivityWrapper$StateChangeCallback;
.implements Lcom/adobe/air/AndroidActivityWrapper$InputEventCallback;


# static fields
.field private static sAndroidInputManager:Lcom/adobe/air/AndroidInputManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInputDevices:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/adobe/air/AndroidInputDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mInputManager:Landroid/hardware/input/InputManager;

.field private mInternalReference:J

.field private mListening:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lcom/adobe/air/AndroidInputManager;->mContext:Landroid/content/Context;

    .line 43
    iput-object v0, p0, Lcom/adobe/air/AndroidInputManager;->mInputManager:Landroid/hardware/input/InputManager;

    .line 44
    iput-object v0, p0, Lcom/adobe/air/AndroidInputManager;->mInputDevices:Landroid/util/SparseArray;

    const-wide/16 v0, 0x0

    .line 45
    iput-wide v0, p0, Lcom/adobe/air/AndroidInputManager;->mInternalReference:J

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lcom/adobe/air/AndroidInputManager;->mListening:Z

    .line 82
    iput-object p1, p0, Lcom/adobe/air/AndroidInputManager;->mContext:Landroid/content/Context;

    .line 83
    iget-object p1, p0, Lcom/adobe/air/AndroidInputManager;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_0

    .line 85
    iget-object p1, p0, Lcom/adobe/air/AndroidInputManager;->mContext:Landroid/content/Context;

    const-string v0, "input"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/input/InputManager;

    iput-object p1, p0, Lcom/adobe/air/AndroidInputManager;->mInputManager:Landroid/hardware/input/InputManager;

    .line 88
    :cond_0
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 91
    invoke-virtual {p1, p0}, Lcom/adobe/air/AndroidActivityWrapper;->addActivityStateChangeListner(Lcom/adobe/air/AndroidActivityWrapper$StateChangeCallback;)V

    .line 92
    invoke-virtual {p1, p0}, Lcom/adobe/air/AndroidActivityWrapper;->addInputEventListner(Lcom/adobe/air/AndroidActivityWrapper$InputEventCallback;)V

    .line 94
    :cond_1
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/adobe/air/AndroidInputManager;->mInputDevices:Landroid/util/SparseArray;

    return-void
.end method

.method public static GetAndroidInputManager(Landroid/content/Context;)Lcom/adobe/air/AndroidInputManager;
    .locals 1

    .line 73
    invoke-static {}, Lcom/adobe/air/AndroidInputManager;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/adobe/air/AndroidInputManager;->sAndroidInputManager:Lcom/adobe/air/AndroidInputManager;

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Lcom/adobe/air/AndroidInputManager;

    invoke-direct {v0, p0}, Lcom/adobe/air/AndroidInputManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/adobe/air/AndroidInputManager;->sAndroidInputManager:Lcom/adobe/air/AndroidInputManager;

    .line 77
    :cond_0
    sget-object p0, Lcom/adobe/air/AndroidInputManager;->sAndroidInputManager:Lcom/adobe/air/AndroidInputManager;

    return-object p0
.end method

.method private native OnDeviceAdded(JLcom/adobe/air/AndroidInputDevice;Ljava/lang/String;)V
.end method

.method private native OnDeviceRemoved(JLjava/lang/String;)V
.end method

.method private addRemoveExistingInputDevices()V
    .locals 7

    .line 140
    iget-object v0, p0, Lcom/adobe/air/AndroidInputManager;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 143
    iget-object v3, p0, Lcom/adobe/air/AndroidInputManager;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {v3}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    move-result-object v3

    const/4 v4, 0x0

    .line 145
    :goto_1
    array-length v5, v3

    if-ge v4, v5, :cond_1

    .line 147
    iget-object v5, p0, Lcom/adobe/air/AndroidInputManager;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    aget v6, v3, v4

    if-ne v5, v6, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 153
    :cond_1
    :goto_2
    array-length v3, v3

    if-ne v4, v3, :cond_2

    .line 155
    iget-object v3, p0, Lcom/adobe/air/AndroidInputManager;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/adobe/air/AndroidInputDevice;

    .line 156
    iget-wide v4, p0, Lcom/adobe/air/AndroidInputManager;->mInternalReference:J

    invoke-virtual {v3}, Lcom/adobe/air/AndroidInputDevice;->getUniqueId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v4, v5, v3}, Lcom/adobe/air/AndroidInputManager;->OnDeviceRemoved(JLjava/lang/String;)V

    .line 157
    iget-object v3, p0, Lcom/adobe/air/AndroidInputManager;->mInputDevices:Landroid/util/SparseArray;

    iget-object v4, p0, Lcom/adobe/air/AndroidInputManager;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->delete(I)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 162
    :cond_3
    iget-object v0, p0, Lcom/adobe/air/AndroidInputManager;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {v0}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    move-result-object v0

    .line 163
    :goto_3
    array-length v2, v0

    if-ge v1, v2, :cond_4

    .line 165
    aget v2, v0, v1

    invoke-virtual {p0, v2}, Lcom/adobe/air/AndroidInputManager;->onInputDeviceAdded(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    return-void
.end method

.method public static isSupported()Z
    .locals 2

    const/4 v0, 0x0

    .line 52
    :try_start_0
    invoke-static {}, Lcom/harman/services/AIRRuntimeCheck;->shouldDisableSensorAccess()Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    const-string v1, "android.hardware.input.InputManager"

    .line 55
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v0

    :catch_0
    return v0
.end method


# virtual methods
.method public getInputDevice(I)Lcom/adobe/air/AndroidInputDevice;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/adobe/air/AndroidInputManager;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/adobe/air/AndroidInputDevice;

    return-object p1
.end method

.method public listenForInputDevice(Z)V
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/adobe/air/AndroidInputManager;->mInputManager:Landroid/hardware/input/InputManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 119
    :try_start_0
    iget-boolean v0, p0, Lcom/adobe/air/AndroidInputManager;->mListening:Z

    if-nez v0, :cond_1

    .line 121
    iget-object p1, p0, Lcom/adobe/air/AndroidInputManager;->mInputManager:Landroid/hardware/input/InputManager;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    .line 122
    invoke-direct {p0}, Lcom/adobe/air/AndroidInputManager;->addRemoveExistingInputDevices()V

    const/4 p1, 0x1

    .line 123
    iput-boolean p1, p0, Lcom/adobe/air/AndroidInputManager;->mListening:Z

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    .line 125
    iget-boolean p1, p0, Lcom/adobe/air/AndroidInputManager;->mListening:Z

    if-eqz p1, :cond_2

    .line 127
    iget-object p1, p0, Lcom/adobe/air/AndroidInputManager;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {p1, p0}, Landroid/hardware/input/InputManager;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V

    const/4 p1, 0x0

    .line 128
    iput-boolean p1, p0, Lcom/adobe/air/AndroidInputManager;->mListening:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    :goto_0
    return-void
.end method

.method public onActivityStateChanged(Lcom/adobe/air/AndroidActivityWrapper$ActivityState;)V
    .locals 1

    .line 243
    sget-object v0, Lcom/adobe/air/AndroidActivityWrapper$ActivityState;->RESUMED:Lcom/adobe/air/AndroidActivityWrapper$ActivityState;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    .line 245
    invoke-virtual {p0, p1}, Lcom/adobe/air/AndroidInputManager;->listenForInputDevice(Z)V

    goto :goto_0

    .line 247
    :cond_0
    sget-object v0, Lcom/adobe/air/AndroidActivityWrapper$ActivityState;->PAUSED:Lcom/adobe/air/AndroidActivityWrapper$ActivityState;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    .line 249
    invoke-virtual {p0, p1}, Lcom/adobe/air/AndroidInputManager;->listenForInputDevice(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 228
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 231
    iget-object v0, p0, Lcom/adobe/air/AndroidInputManager;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/air/AndroidInputDevice;

    if-eqz v0, :cond_0

    .line 234
    invoke-virtual {v0, p1}, Lcom/adobe/air/AndroidInputDevice;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onInputDeviceAdded(I)V
    .locals 4

    .line 172
    iget-object v0, p0, Lcom/adobe/air/AndroidInputManager;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/air/AndroidInputDevice;

    if-nez v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/adobe/air/AndroidInputManager;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {v0, p1}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 176
    invoke-virtual {v0}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/view/InputDevice;->getSources()I

    move-result v1

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_0

    .line 177
    invoke-virtual {v0}, Landroid/view/InputDevice;->getSources()I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 179
    new-instance v1, Lcom/adobe/air/AndroidInputDevice;

    invoke-direct {v1, v0}, Lcom/adobe/air/AndroidInputDevice;-><init>(Landroid/view/InputDevice;)V

    .line 182
    iget-object v0, p0, Lcom/adobe/air/AndroidInputManager;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 183
    iget-wide v2, p0, Lcom/adobe/air/AndroidInputManager;->mInternalReference:J

    invoke-virtual {v1}, Lcom/adobe/air/AndroidInputDevice;->getUniqueId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v2, v3, v1, p1}, Lcom/adobe/air/AndroidInputManager;->OnDeviceAdded(JLcom/adobe/air/AndroidInputDevice;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onInputDeviceChanged(I)V
    .locals 0

    .line 207
    invoke-virtual {p0, p1}, Lcom/adobe/air/AndroidInputManager;->onInputDeviceRemoved(I)V

    .line 208
    invoke-virtual {p0, p1}, Lcom/adobe/air/AndroidInputManager;->onInputDeviceAdded(I)V

    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .locals 3

    .line 191
    iget-object v0, p0, Lcom/adobe/air/AndroidInputManager;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/air/AndroidInputDevice;

    if-eqz v0, :cond_0

    .line 196
    iget-wide v1, p0, Lcom/adobe/air/AndroidInputManager;->mInternalReference:J

    invoke-virtual {v0}, Lcom/adobe/air/AndroidInputDevice;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v2, v0}, Lcom/adobe/air/AndroidInputManager;->OnDeviceRemoved(JLjava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/adobe/air/AndroidInputManager;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    :cond_0
    return-void
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 215
    iget-object v0, p0, Lcom/adobe/air/AndroidInputManager;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/air/AndroidInputDevice;

    if-eqz v0, :cond_0

    .line 218
    invoke-virtual {v0, p1}, Lcom/adobe/air/AndroidInputDevice;->onKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setInternalReference(J)V
    .locals 0

    .line 104
    iput-wide p1, p0, Lcom/adobe/air/AndroidInputManager;->mInternalReference:J

    return-void
.end method
