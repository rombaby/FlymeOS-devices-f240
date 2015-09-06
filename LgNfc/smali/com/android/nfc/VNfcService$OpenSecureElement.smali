.class Lcom/android/nfc/VNfcService$OpenSecureElement;
.super Ljava/lang/Object;
.source "VNfcService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/VNfcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OpenSecureElement"
.end annotation


# instance fields
.field public binder:Landroid/os/IBinder;

.field public handle:I

.field public pid:I

.field final synthetic this$0:Lcom/android/nfc/VNfcService;


# direct methods
.method public constructor <init>(Lcom/android/nfc/VNfcService;IILandroid/os/IBinder;)V
    .locals 0
    .param p2, "pid"    # I
    .param p3, "handle"    # I
    .param p4, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 938
    iput-object p1, p0, Lcom/android/nfc/VNfcService$OpenSecureElement;->this$0:Lcom/android/nfc/VNfcService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 939
    iput p2, p0, Lcom/android/nfc/VNfcService$OpenSecureElement;->pid:I

    .line 940
    iput p3, p0, Lcom/android/nfc/VNfcService$OpenSecureElement;->handle:I

    .line 941
    iput-object p4, p0, Lcom/android/nfc/VNfcService$OpenSecureElement;->binder:Landroid/os/IBinder;

    .line 942
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    .prologue
    .line 945
    iget-object v1, p0, Lcom/android/nfc/VNfcService$OpenSecureElement;->this$0:Lcom/android/nfc/VNfcService;

    monitor-enter v1

    .line 946
    :try_start_0
    sget-object v0, Lcom/android/nfc/VNfcService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tracked app "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/nfc/VNfcService$OpenSecureElement;->pid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " died"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/nfc/utils/LNfcLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 947
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/nfc/VNfcService$OpenSecureElement;->pid:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 949
    :try_start_1
    iget-object v0, p0, Lcom/android/nfc/VNfcService$OpenSecureElement;->this$0:Lcom/android/nfc/VNfcService;

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/android/nfc/VNfcService$OpenSecureElement;->binder:Landroid/os/IBinder;

    invoke-virtual {v0, v2, v3}, Lcom/android/nfc/VNfcService;->_nfcEeClose(ILandroid/os/IBinder;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 951
    :goto_0
    :try_start_2
    monitor-exit v1

    .line 952
    return-void

    .line 951
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 950
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 955
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/nfc/VNfcService$OpenSecureElement;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " handle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/nfc/VNfcService$OpenSecureElement;->handle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
