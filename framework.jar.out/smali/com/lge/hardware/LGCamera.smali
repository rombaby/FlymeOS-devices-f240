.class public Lcom/lge/hardware/LGCamera;
.super Ljava/lang/Object;
.source "LGCamera.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/hardware/LGCamera$ProxyData;,
        Lcom/lge/hardware/LGCamera$ProxyDataListener;,
        Lcom/lge/hardware/LGCamera$EventHandler;,
        Lcom/lge/hardware/LGCamera$LGParameters;,
        Lcom/lge/hardware/LGCamera$CameraMetaDataCallback;,
        Lcom/lge/hardware/LGCamera$CameraDataCallback;
    }
.end annotation


# static fields
.field private static final CAMERA_META_DATA_FLASH_INDICATOR:I = 0x8

.field private static final CAMERA_META_DATA_HDR_INDICATOR:I = 0x4

.field private static final CAMERA_MSG_META_DATA:I = 0x2000

.field private static final CAMERA_MSG_OBT_DATA:I = 0x5000

.field private static final CAMERA_MSG_PROXY_DATA:I = 0x8000

.field private static final CAMERA_MSG_STATS_DATA:I = 0x1000

.field private static final TAG:Ljava/lang/String; = "LGCamera"

.field private static sSplitAreaMethod:Ljava/lang/Object;


# instance fields
.field private mCamera:Landroid/hardware/Camera;

.field private mCameraDataCallback:Lcom/lge/hardware/LGCamera$CameraDataCallback;

.field private mCameraId:I

.field private mEnabledMetaData:I

.field private mEventHandler:Lcom/lge/hardware/LGCamera$EventHandler;

.field private mFlashMetaDataCallback:Lcom/lge/hardware/LGCamera$CameraMetaDataCallback;

.field private mHdrMetaDataCallback:Lcom/lge/hardware/LGCamera$CameraMetaDataCallback;

.field private mMetaDataCallbackLock:Ljava/lang/Object;

.field private mProxyDataListener:Lcom/lge/hardware/LGCamera$ProxyDataListener;

.field private mProxyDataRunning:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 40
    const-string v0, "hook_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 302
    const-class v0, Landroid/hardware/Camera$Parameters;

    const-string/jumbo v1, "splitArea"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/lge/util/ProxyUtil;->loadMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/lge/hardware/LGCamera;->sSplitAreaMethod:Ljava/lang/Object;

    .line 303
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "cameraId"    # I

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/hardware/LGCamera;->mProxyDataRunning:Z

    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lge/hardware/LGCamera;->mMetaDataCallbackLock:Ljava/lang/Object;

    .line 77
    invoke-static {p1}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/hardware/LGCamera;->mCamera:Landroid/hardware/Camera;

    .line 79
    iget-object v0, p0, Lcom/lge/hardware/LGCamera;->mCamera:Landroid/hardware/Camera;

    invoke-direct {p0, p1, v0}, Lcom/lge/hardware/LGCamera;->cameraInit(ILandroid/hardware/Camera;)V

    .line 80
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "cameraId"    # I
    .param p2, "halVersion"    # I

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/hardware/LGCamera;->mProxyDataRunning:Z

    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lge/hardware/LGCamera;->mMetaDataCallbackLock:Ljava/lang/Object;

    .line 96
    invoke-static {p1, p2}, Landroid/hardware/Camera;->openLegacy(II)Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/hardware/LGCamera;->mCamera:Landroid/hardware/Camera;

    .line 98
    iget-object v0, p0, Lcom/lge/hardware/LGCamera;->mCamera:Landroid/hardware/Camera;

    invoke-direct {p0, p1, v0}, Lcom/lge/hardware/LGCamera;->cameraInit(ILandroid/hardware/Camera;)V

    .line 99
    return-void
.end method

.method private final native _enableProxyDataListen(Landroid/hardware/Camera;Z)V
.end method

.method static synthetic access$000(Lcom/lge/hardware/LGCamera;)Landroid/hardware/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/lge/hardware/LGCamera;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lge/hardware/LGCamera;->mCamera:Landroid/hardware/Camera;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/lge/hardware/LGCamera;->sSplitAreaMethod:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lge/hardware/LGCamera;)Lcom/lge/hardware/LGCamera$CameraDataCallback;
    .locals 1
    .param p0, "x0"    # Lcom/lge/hardware/LGCamera;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lge/hardware/LGCamera;->mCameraDataCallback:Lcom/lge/hardware/LGCamera$CameraDataCallback;

    return-object v0
.end method

.method static synthetic access$300([BI)I
    .locals 1
    .param p0, "x0"    # [B
    .param p1, "x1"    # I

    .prologue
    .line 37
    invoke-static {p0, p1}, Lcom/lge/hardware/LGCamera;->byteToInt([BI)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/lge/hardware/LGCamera;)Lcom/lge/hardware/LGCamera$ProxyDataListener;
    .locals 1
    .param p0, "x0"    # Lcom/lge/hardware/LGCamera;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lge/hardware/LGCamera;->mProxyDataListener:Lcom/lge/hardware/LGCamera$ProxyDataListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lge/hardware/LGCamera;)I
    .locals 1
    .param p0, "x0"    # Lcom/lge/hardware/LGCamera;

    .prologue
    .line 37
    iget v0, p0, Lcom/lge/hardware/LGCamera;->mEnabledMetaData:I

    return v0
.end method

.method static synthetic access$600(Lcom/lge/hardware/LGCamera;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/lge/hardware/LGCamera;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lge/hardware/LGCamera;->mMetaDataCallbackLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$700(Lcom/lge/hardware/LGCamera;)Lcom/lge/hardware/LGCamera$CameraMetaDataCallback;
    .locals 1
    .param p0, "x0"    # Lcom/lge/hardware/LGCamera;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lge/hardware/LGCamera;->mHdrMetaDataCallback:Lcom/lge/hardware/LGCamera$CameraMetaDataCallback;

    return-object v0
.end method

.method static synthetic access$800(Lcom/lge/hardware/LGCamera;)Lcom/lge/hardware/LGCamera$CameraMetaDataCallback;
    .locals 1
    .param p0, "x0"    # Lcom/lge/hardware/LGCamera;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lge/hardware/LGCamera;->mFlashMetaDataCallback:Lcom/lge/hardware/LGCamera$CameraMetaDataCallback;

    return-object v0
.end method

.method private static byteToInt([BI)I
    .locals 4
    .param p0, "b"    # [B
    .param p1, "offset"    # I

    .prologue
    .line 139
    const/4 v2, 0x0

    .line 140
    .local v2, "value":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v3, 0x4

    if-ge v0, v3, :cond_0

    .line 141
    rsub-int/lit8 v3, v0, 0x3

    mul-int/lit8 v1, v3, 0x8

    .line 142
    .local v1, "shift":I
    rsub-int/lit8 v3, v0, 0x3

    add-int/2addr v3, p1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v1

    add-int/2addr v2, v3

    .line 140
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 144
    .end local v1    # "shift":I
    :cond_0
    return v2
.end method

.method private cameraInit(ILandroid/hardware/Camera;)V
    .locals 3
    .param p1, "cameraId"    # I
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    const/4 v2, 0x0

    .line 102
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v1, p2}, Lcom/lge/hardware/LGCamera;->native_change_listener(Ljava/lang/Object;Landroid/hardware/Camera;)V

    .line 103
    iput-object v2, p0, Lcom/lge/hardware/LGCamera;->mCameraDataCallback:Lcom/lge/hardware/LGCamera$CameraDataCallback;

    .line 104
    iput-object v2, p0, Lcom/lge/hardware/LGCamera;->mProxyDataListener:Lcom/lge/hardware/LGCamera$ProxyDataListener;

    .line 105
    iput-object v2, p0, Lcom/lge/hardware/LGCamera;->mHdrMetaDataCallback:Lcom/lge/hardware/LGCamera$CameraMetaDataCallback;

    .line 106
    iput-object v2, p0, Lcom/lge/hardware/LGCamera;->mFlashMetaDataCallback:Lcom/lge/hardware/LGCamera$CameraMetaDataCallback;

    .line 107
    const/4 v1, 0x0

    iput v1, p0, Lcom/lge/hardware/LGCamera;->mEnabledMetaData:I

    .line 108
    iput p1, p0, Lcom/lge/hardware/LGCamera;->mCameraId:I

    .line 111
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 112
    new-instance v1, Lcom/lge/hardware/LGCamera$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Lcom/lge/hardware/LGCamera$EventHandler;-><init>(Lcom/lge/hardware/LGCamera;Lcom/lge/hardware/LGCamera;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/lge/hardware/LGCamera;->mEventHandler:Lcom/lge/hardware/LGCamera$EventHandler;

    .line 118
    :goto_0
    return-void

    .line 113
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 114
    new-instance v1, Lcom/lge/hardware/LGCamera$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Lcom/lge/hardware/LGCamera$EventHandler;-><init>(Lcom/lge/hardware/LGCamera;Lcom/lge/hardware/LGCamera;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/lge/hardware/LGCamera;->mEventHandler:Lcom/lge/hardware/LGCamera$EventHandler;

    goto :goto_0

    .line 116
    :cond_1
    iput-object v2, p0, Lcom/lge/hardware/LGCamera;->mEventHandler:Lcom/lge/hardware/LGCamera$EventHandler;

    goto :goto_0
.end method

.method private final native native_cancelPicture(Landroid/hardware/Camera;)V
.end method

.method private final native native_change_listener(Ljava/lang/Object;Landroid/hardware/Camera;)V
.end method

.method private final native native_sendObjectTrackingCmd(Landroid/hardware/Camera;)V
.end method

.method private final native native_setISPDataCallbackMode(Landroid/hardware/Camera;Z)V
.end method

.method private final native native_setMetadataCb(Landroid/hardware/Camera;Z)V
.end method

.method private final native native_setOBTDataCallbackMode(Landroid/hardware/Camera;Z)V
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 3
    .param p0, "camera_ref"    # Ljava/lang/Object;
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    .line 948
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0    # "camera_ref":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/hardware/LGCamera;

    .line 949
    .local v0, "c":Lcom/lge/hardware/LGCamera;
    if-nez v0, :cond_1

    .line 957
    :cond_0
    :goto_0
    return-void

    .line 953
    :cond_1
    iget-object v2, v0, Lcom/lge/hardware/LGCamera;->mEventHandler:Lcom/lge/hardware/LGCamera$EventHandler;

    if-eqz v2, :cond_0

    .line 954
    iget-object v2, v0, Lcom/lge/hardware/LGCamera;->mEventHandler:Lcom/lge/hardware/LGCamera$EventHandler;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/lge/hardware/LGCamera$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 955
    .local v1, "m":Landroid/os/Message;
    iget-object v2, v0, Lcom/lge/hardware/LGCamera;->mEventHandler:Lcom/lge/hardware/LGCamera$EventHandler;

    invoke-virtual {v2, v1}, Lcom/lge/hardware/LGCamera$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method


# virtual methods
.method public final cancelPicture()V
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/lge/hardware/LGCamera;->mCamera:Landroid/hardware/Camera;

    invoke-direct {p0, v0}, Lcom/lge/hardware/LGCamera;->native_cancelPicture(Landroid/hardware/Camera;)V

    .line 285
    return-void
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/lge/hardware/LGCamera;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/lge/hardware/LGCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/hardware/LGCamera;->mCamera:Landroid/hardware/Camera;

    .line 136
    :cond_0
    return-void
.end method

.method public getCamera()Landroid/hardware/Camera;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/lge/hardware/LGCamera;->mCamera:Landroid/hardware/Camera;

    return-object v0
.end method

.method public getLGParameters()Lcom/lge/hardware/LGCamera$LGParameters;
    .locals 1

    .prologue
    .line 296
    new-instance v0, Lcom/lge/hardware/LGCamera$LGParameters;

    invoke-direct {v0, p0}, Lcom/lge/hardware/LGCamera$LGParameters;-><init>(Lcom/lge/hardware/LGCamera;)V

    .line 297
    .local v0, "p":Lcom/lge/hardware/LGCamera$LGParameters;
    return-object v0
.end method

.method public final runObjectTracking()V
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/lge/hardware/LGCamera;->mCamera:Landroid/hardware/Camera;

    invoke-direct {p0, v0}, Lcom/lge/hardware/LGCamera;->native_sendObjectTrackingCmd(Landroid/hardware/Camera;)V

    .line 247
    return-void
.end method

.method public final setFlashdataCb(Lcom/lge/hardware/LGCamera$CameraMetaDataCallback;)V
    .locals 3
    .param p1, "cb"    # Lcom/lge/hardware/LGCamera$CameraMetaDataCallback;

    .prologue
    .line 218
    iget-object v2, p0, Lcom/lge/hardware/LGCamera;->mMetaDataCallbackLock:Ljava/lang/Object;

    monitor-enter v2

    .line 219
    :try_start_0
    iput-object p1, p0, Lcom/lge/hardware/LGCamera;->mFlashMetaDataCallback:Lcom/lge/hardware/LGCamera$CameraMetaDataCallback;

    .line 220
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    if-nez p1, :cond_1

    .line 224
    :try_start_1
    iget v1, p0, Lcom/lge/hardware/LGCamera;->mEnabledMetaData:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Lcom/lge/hardware/LGCamera;->mEnabledMetaData:I

    .line 225
    iget v1, p0, Lcom/lge/hardware/LGCamera;->mEnabledMetaData:I

    if-nez v1, :cond_0

    .line 226
    iget-object v1, p0, Lcom/lge/hardware/LGCamera;->mCamera:Landroid/hardware/Camera;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/lge/hardware/LGCamera;->native_setMetadataCb(Landroid/hardware/Camera;Z)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 220
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 229
    :cond_1
    :try_start_3
    iget v1, p0, Lcom/lge/hardware/LGCamera;->mEnabledMetaData:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/lge/hardware/LGCamera;->mEnabledMetaData:I

    .line 230
    iget-object v1, p0, Lcom/lge/hardware/LGCamera;->mCamera:Landroid/hardware/Camera;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/lge/hardware/LGCamera;->native_setMetadataCb(Landroid/hardware/Camera;Z)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 232
    :catch_0
    move-exception v0

    .line 233
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "LGCamera"

    const-string/jumbo v2, "setFlashdataCb failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget v1, p0, Lcom/lge/hardware/LGCamera;->mEnabledMetaData:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Lcom/lge/hardware/LGCamera;->mEnabledMetaData:I

    goto :goto_0
.end method

.method public final setISPDataCallbackMode(Lcom/lge/hardware/LGCamera$CameraDataCallback;)V
    .locals 2
    .param p1, "cb"    # Lcom/lge/hardware/LGCamera$CameraDataCallback;

    .prologue
    .line 258
    iput-object p1, p0, Lcom/lge/hardware/LGCamera;->mCameraDataCallback:Lcom/lge/hardware/LGCamera$CameraDataCallback;

    .line 259
    iget-object v1, p0, Lcom/lge/hardware/LGCamera;->mCamera:Landroid/hardware/Camera;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/lge/hardware/LGCamera;->native_setISPDataCallbackMode(Landroid/hardware/Camera;Z)V

    .line 260
    return-void

    .line 259
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setMetadataCb(Lcom/lge/hardware/LGCamera$CameraMetaDataCallback;)V
    .locals 3
    .param p1, "cb"    # Lcom/lge/hardware/LGCamera$CameraMetaDataCallback;

    .prologue
    .line 189
    iget-object v2, p0, Lcom/lge/hardware/LGCamera;->mMetaDataCallbackLock:Ljava/lang/Object;

    monitor-enter v2

    .line 190
    :try_start_0
    iput-object p1, p0, Lcom/lge/hardware/LGCamera;->mHdrMetaDataCallback:Lcom/lge/hardware/LGCamera$CameraMetaDataCallback;

    .line 191
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    if-nez p1, :cond_1

    .line 195
    :try_start_1
    iget v1, p0, Lcom/lge/hardware/LGCamera;->mEnabledMetaData:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/lge/hardware/LGCamera;->mEnabledMetaData:I

    .line 196
    iget v1, p0, Lcom/lge/hardware/LGCamera;->mEnabledMetaData:I

    if-nez v1, :cond_0

    .line 197
    iget-object v1, p0, Lcom/lge/hardware/LGCamera;->mCamera:Landroid/hardware/Camera;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/lge/hardware/LGCamera;->native_setMetadataCb(Landroid/hardware/Camera;Z)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 191
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 200
    :cond_1
    :try_start_3
    iget v1, p0, Lcom/lge/hardware/LGCamera;->mEnabledMetaData:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/lge/hardware/LGCamera;->mEnabledMetaData:I

    .line 201
    iget-object v1, p0, Lcom/lge/hardware/LGCamera;->mCamera:Landroid/hardware/Camera;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/lge/hardware/LGCamera;->native_setMetadataCb(Landroid/hardware/Camera;Z)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 203
    :catch_0
    move-exception v0

    .line 204
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "LGCamera"

    const-string/jumbo v2, "setMetadataCb failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget v1, p0, Lcom/lge/hardware/LGCamera;->mEnabledMetaData:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/lge/hardware/LGCamera;->mEnabledMetaData:I

    goto :goto_0
.end method

.method public final setOBTDataCallbackMode(Lcom/lge/hardware/LGCamera$CameraDataCallback;)V
    .locals 2
    .param p1, "cb"    # Lcom/lge/hardware/LGCamera$CameraDataCallback;

    .prologue
    .line 272
    iput-object p1, p0, Lcom/lge/hardware/LGCamera;->mCameraDataCallback:Lcom/lge/hardware/LGCamera$CameraDataCallback;

    .line 273
    iget-object v1, p0, Lcom/lge/hardware/LGCamera;->mCamera:Landroid/hardware/Camera;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/lge/hardware/LGCamera;->native_setOBTDataCallbackMode(Landroid/hardware/Camera;Z)V

    .line 274
    return-void

    .line 273
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setProxyDataListener(Lcom/lge/hardware/LGCamera$ProxyDataListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/lge/hardware/LGCamera$ProxyDataListener;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1016
    iput-object p1, p0, Lcom/lge/hardware/LGCamera;->mProxyDataListener:Lcom/lge/hardware/LGCamera$ProxyDataListener;

    .line 1017
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/lge/hardware/LGCamera;->mProxyDataRunning:Z

    if-nez v0, :cond_1

    .line 1018
    iput-boolean v2, p0, Lcom/lge/hardware/LGCamera;->mProxyDataRunning:Z

    .line 1019
    iget-object v0, p0, Lcom/lge/hardware/LGCamera;->mCamera:Landroid/hardware/Camera;

    invoke-direct {p0, v0, v2}, Lcom/lge/hardware/LGCamera;->_enableProxyDataListen(Landroid/hardware/Camera;Z)V

    .line 1025
    :cond_0
    :goto_0
    return-void

    .line 1021
    :cond_1
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/lge/hardware/LGCamera;->mProxyDataRunning:Z

    if-eqz v0, :cond_0

    .line 1022
    iput-boolean v1, p0, Lcom/lge/hardware/LGCamera;->mProxyDataRunning:Z

    .line 1023
    iget-object v0, p0, Lcom/lge/hardware/LGCamera;->mCamera:Landroid/hardware/Camera;

    invoke-direct {p0, v0, v1}, Lcom/lge/hardware/LGCamera;->_enableProxyDataListen(Landroid/hardware/Camera;Z)V

    goto :goto_0
.end method