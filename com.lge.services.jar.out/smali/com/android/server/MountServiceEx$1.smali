.class Lcom/android/server/MountServiceEx$1;
.super Ljava/lang/Thread;
.source "MountServiceEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/MountServiceEx;->onDaemonConnected()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MountServiceEx;


# direct methods
.method constructor <init>(Lcom/android/server/MountServiceEx;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/server/MountServiceEx$1;->this$0:Lcom/android/server/MountServiceEx;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 157
    :try_start_0
    const-string v13, "vold.encrypt_progress"

    invoke-static {v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    const-string v13, "vold.encrypt_progress"

    invoke-static {v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "100"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 158
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountServiceEx$1;->this$0:Lcom/android/server/MountServiceEx;

    iget-object v13, v13, Lcom/android/server/MountServiceEx;->mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v14, "volume"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const-string v17, "list"

    aput-object v17, v15, v16

    const/16 v16, 0x1

    const-string v17, "broadcast"

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v15}, Lcom/android/server/NativeDaemonConnector;->executeForList(Ljava/lang/String;[Ljava/lang/Object;)[Lcom/android/server/NativeDaemonEvent;

    move-result-object v13

    const/16 v14, 0x6e

    invoke-static {v13, v14}, Lcom/android/server/NativeDaemonEvent;->filterMessageList([Lcom/android/server/NativeDaemonEvent;I)[Ljava/lang/String;

    move-result-object v10

    .line 165
    .local v10, "vols":[Ljava/lang/String;
    move-object v1, v10

    .local v1, "arr$":[Ljava/lang/String;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_f

    aget-object v11, v1, v3

    .line 166
    .local v11, "volstr":Ljava/lang/String;
    const-string v13, " "

    invoke-virtual {v11, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 168
    .local v9, "tok":[Ljava/lang/String;
    const/4 v13, 0x1

    aget-object v5, v9, v13

    .line 169
    .local v5, "path":Ljava/lang/String;
    const-string v8, "removed"

    .line 172
    .local v8, "state":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountServiceEx$1;->this$0:Lcom/android/server/MountServiceEx;

    iget-object v14, v13, Lcom/android/server/MountServiceEx;->mVolumesLock:Ljava/lang/Object;

    monitor-enter v14
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 173
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountServiceEx$1;->this$0:Lcom/android/server/MountServiceEx;

    iget-object v13, v13, Lcom/android/server/MountServiceEx;->mVolumesByPath:Ljava/util/HashMap;

    invoke-virtual {v13, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/storage/StorageVolume;

    .line 174
    .local v12, "volume":Landroid/os/storage/StorageVolume;
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 176
    const/4 v13, 0x2

    :try_start_2
    aget-object v13, v9, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 177
    .local v7, "st":I
    if-nez v7, :cond_8

    .line 178
    const-string v8, "removed"

    .line 194
    :goto_1
    if-eqz v12, :cond_1

    if-eqz v8, :cond_1

    .line 195
    const-string v13, "MountServiceEx"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Updating valid state "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountServiceEx$1;->this$0:Lcom/android/server/MountServiceEx;

    invoke-virtual {v13, v12, v8}, Lcom/android/server/MountServiceEx;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 165
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 211
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "path":Ljava/lang/String;
    .end local v7    # "st":I
    .end local v8    # "state":Ljava/lang/String;
    .end local v9    # "tok":[Ljava/lang/String;
    .end local v10    # "vols":[Ljava/lang/String;
    .end local v11    # "volstr":Ljava/lang/String;
    .end local v12    # "volume":Landroid/os/storage/StorageVolume;
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountServiceEx$1;->this$0:Lcom/android/server/MountServiceEx;

    iget-object v13, v13, Lcom/android/server/MountServiceEx;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v13}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 215
    const-string v13, "vold.encrypt_progress"

    invoke-static {v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3

    const-string v13, "vold.encrypt_progress"

    invoke-static {v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "100"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 216
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountServiceEx$1;->this$0:Lcom/android/server/MountServiceEx;

    invoke-virtual {v13}, Lcom/android/server/MountServiceEx;->copyLocaleFromMountService()V

    .line 219
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountServiceEx$1;->this$0:Lcom/android/server/MountServiceEx;

    iget-object v13, v13, Lcom/android/server/MountServiceEx;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v13}, Lcom/android/server/pm/PackageManagerService;->scanAvailableAsecs()V

    .line 222
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountServiceEx$1;->this$0:Lcom/android/server/MountServiceEx;

    iget-object v13, v13, Lcom/android/server/MountServiceEx;->mAsecsScanned:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v13}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 224
    :goto_2
    return-void

    .line 174
    .restart local v1    # "arr$":[Ljava/lang/String;
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    .restart local v5    # "path":Ljava/lang/String;
    .restart local v8    # "state":Ljava/lang/String;
    .restart local v9    # "tok":[Ljava/lang/String;
    .restart local v10    # "vols":[Ljava/lang/String;
    .restart local v11    # "volstr":Ljava/lang/String;
    :catchall_0
    move-exception v13

    :try_start_3
    monitor-exit v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v13
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 199
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "path":Ljava/lang/String;
    .end local v8    # "state":Ljava/lang/String;
    .end local v9    # "tok":[Ljava/lang/String;
    .end local v10    # "vols":[Ljava/lang/String;
    .end local v11    # "volstr":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 200
    .local v2, "e":Ljava/lang/Exception;
    :try_start_5
    const-string v13, "MountServiceEx"

    const-string v14, "Error processing initial volume state"

    invoke-static {v13, v14, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 201
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountServiceEx$1;->this$0:Lcom/android/server/MountServiceEx;

    invoke-virtual {v13}, Lcom/android/server/MountServiceEx;->getPrimaryPhysicalVolume()Landroid/os/storage/StorageVolume;

    move-result-object v6

    .line 202
    .local v6, "primary":Landroid/os/storage/StorageVolume;
    if-eqz v6, :cond_5

    .line 203
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountServiceEx$1;->this$0:Lcom/android/server/MountServiceEx;

    const-string v14, "removed"

    invoke-virtual {v13, v6, v14}, Lcom/android/server/MountServiceEx;->updatePublicVolumeState(Landroid/os/storage/StorageVolume;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 211
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountServiceEx$1;->this$0:Lcom/android/server/MountServiceEx;

    iget-object v13, v13, Lcom/android/server/MountServiceEx;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v13}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 215
    const-string v13, "vold.encrypt_progress"

    invoke-static {v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_6

    const-string v13, "vold.encrypt_progress"

    invoke-static {v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "100"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 216
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountServiceEx$1;->this$0:Lcom/android/server/MountServiceEx;

    invoke-virtual {v13}, Lcom/android/server/MountServiceEx;->copyLocaleFromMountService()V

    .line 219
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountServiceEx$1;->this$0:Lcom/android/server/MountServiceEx;

    iget-object v13, v13, Lcom/android/server/MountServiceEx;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v13}, Lcom/android/server/pm/PackageManagerService;->scanAvailableAsecs()V

    .line 222
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountServiceEx$1;->this$0:Lcom/android/server/MountServiceEx;

    iget-object v13, v13, Lcom/android/server/MountServiceEx;->mAsecsScanned:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v13}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_2

    .line 179
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v6    # "primary":Landroid/os/storage/StorageVolume;
    .restart local v1    # "arr$":[Ljava/lang/String;
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    .restart local v5    # "path":Ljava/lang/String;
    .restart local v7    # "st":I
    .restart local v8    # "state":Ljava/lang/String;
    .restart local v9    # "tok":[Ljava/lang/String;
    .restart local v10    # "vols":[Ljava/lang/String;
    .restart local v11    # "volstr":Ljava/lang/String;
    .restart local v12    # "volume":Landroid/os/storage/StorageVolume;
    :cond_8
    const/4 v13, 0x1

    if-ne v7, v13, :cond_9

    .line 180
    :try_start_6
    const-string v8, "unmounted"

    goto/16 :goto_1

    .line 181
    :cond_9
    const/4 v13, 0x4

    if-ne v7, v13, :cond_c

    .line 182
    const-string v8, "mounted"

    .line 183
    const-string v13, "MountServiceEx"

    const-string v14, "Media already mounted on daemon connection"

    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_1

    .line 211
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "path":Ljava/lang/String;
    .end local v7    # "st":I
    .end local v8    # "state":Ljava/lang/String;
    .end local v9    # "tok":[Ljava/lang/String;
    .end local v10    # "vols":[Ljava/lang/String;
    .end local v11    # "volstr":Ljava/lang/String;
    .end local v12    # "volume":Landroid/os/storage/StorageVolume;
    :catchall_1
    move-exception v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountServiceEx$1;->this$0:Lcom/android/server/MountServiceEx;

    iget-object v14, v14, Lcom/android/server/MountServiceEx;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v14}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 215
    const-string v14, "vold.encrypt_progress"

    invoke-static {v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_a

    const-string v14, "vold.encrypt_progress"

    invoke-static {v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "100"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 216
    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountServiceEx$1;->this$0:Lcom/android/server/MountServiceEx;

    invoke-virtual {v14}, Lcom/android/server/MountServiceEx;->copyLocaleFromMountService()V

    .line 219
    :cond_b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountServiceEx$1;->this$0:Lcom/android/server/MountServiceEx;

    iget-object v14, v14, Lcom/android/server/MountServiceEx;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v14}, Lcom/android/server/pm/PackageManagerService;->scanAvailableAsecs()V

    .line 222
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/MountServiceEx$1;->this$0:Lcom/android/server/MountServiceEx;

    iget-object v14, v14, Lcom/android/server/MountServiceEx;->mAsecsScanned:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v14}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v13

    .line 184
    .restart local v1    # "arr$":[Ljava/lang/String;
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    .restart local v5    # "path":Ljava/lang/String;
    .restart local v7    # "st":I
    .restart local v8    # "state":Ljava/lang/String;
    .restart local v9    # "tok":[Ljava/lang/String;
    .restart local v10    # "vols":[Ljava/lang/String;
    .restart local v11    # "volstr":Ljava/lang/String;
    .restart local v12    # "volume":Landroid/os/storage/StorageVolume;
    :cond_c
    :try_start_7
    sget-boolean v13, Lcom/lge/config/ThreelmMdmConfig;->THREELM_MDM:Z

    if-eqz v13, :cond_d

    const/16 v13, 0x9

    if-ne v7, v13, :cond_d

    .line 185
    const-string v8, "mounted_ro"

    .line 186
    const-string v13, "MountServiceEx"

    const-string v14, "Media already mounted on daemon connection"

    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 187
    :cond_d
    const/4 v13, 0x7

    if-ne v7, v13, :cond_e

    .line 188
    const-string v8, "shared"

    .line 189
    const-string v13, "MountServiceEx"

    const-string v14, "Media shared on daemon connection"

    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 191
    :cond_e
    new-instance v13, Ljava/lang/Exception;

    const-string v14, "Unexpected state %d"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 211
    .end local v5    # "path":Ljava/lang/String;
    .end local v7    # "st":I
    .end local v8    # "state":Ljava/lang/String;
    .end local v9    # "tok":[Ljava/lang/String;
    .end local v11    # "volstr":Ljava/lang/String;
    .end local v12    # "volume":Landroid/os/storage/StorageVolume;
    :cond_f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountServiceEx$1;->this$0:Lcom/android/server/MountServiceEx;

    iget-object v13, v13, Lcom/android/server/MountServiceEx;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v13}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 215
    const-string v13, "vold.encrypt_progress"

    invoke-static {v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_10

    const-string v13, "vold.encrypt_progress"

    invoke-static {v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "100"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_11

    .line 216
    :cond_10
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountServiceEx$1;->this$0:Lcom/android/server/MountServiceEx;

    invoke-virtual {v13}, Lcom/android/server/MountServiceEx;->copyLocaleFromMountService()V

    .line 219
    :cond_11
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountServiceEx$1;->this$0:Lcom/android/server/MountServiceEx;

    iget-object v13, v13, Lcom/android/server/MountServiceEx;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v13}, Lcom/android/server/pm/PackageManagerService;->scanAvailableAsecs()V

    .line 222
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/MountServiceEx$1;->this$0:Lcom/android/server/MountServiceEx;

    iget-object v13, v13, Lcom/android/server/MountServiceEx;->mAsecsScanned:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v13}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto/16 :goto_2
.end method