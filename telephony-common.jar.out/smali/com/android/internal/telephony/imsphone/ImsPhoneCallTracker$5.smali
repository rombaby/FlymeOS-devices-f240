.class Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$5;
.super Lcom/android/ims/ImsConnectionStateListener;
.source "ImsPhoneCallTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)V
    .locals 0

    .prologue
    .line 1373
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$5;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    invoke-direct {p0}, Lcom/android/ims/ImsConnectionStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFeatureCapabilityChanged(I[I[I)V
    .locals 6
    .param p1, "serviceClass"    # I
    .param p2, "enabledFeatures"    # [I
    .param p3, "disabledFeatures"    # [I

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1401
    if-ne p1, v2, :cond_8

    .line 1402
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$5;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    # getter for: Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mIsVtEnabled:Z
    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->access$1800(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z

    move-result v0

    .line 1404
    .local v0, "tmpIsVtEnabled":Z
    aget v1, p3, v3

    if-eqz v1, :cond_0

    aget v1, p3, v4

    if-ne v1, v4, :cond_1

    .line 1408
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$5;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    # setter for: Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mIsVolteEnabled:Z
    invoke-static {v1, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->access$1902(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Z)Z

    .line 1410
    :cond_1
    aget v1, p3, v2

    if-eq v1, v2, :cond_2

    aget v1, p3, v5

    if-ne v1, v5, :cond_3

    .line 1414
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$5;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    # setter for: Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mIsVtEnabled:Z
    invoke-static {v1, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->access$1802(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Z)Z

    .line 1416
    :cond_3
    aget v1, p2, v3

    if-eqz v1, :cond_4

    aget v1, p2, v4

    if-ne v1, v4, :cond_5

    .line 1420
    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$5;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    # setter for: Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mIsVolteEnabled:Z
    invoke-static {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->access$1902(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Z)Z

    .line 1422
    :cond_5
    aget v1, p2, v2

    if-eq v1, v2, :cond_6

    aget v1, p2, v5

    if-ne v1, v5, :cond_7

    .line 1426
    :cond_6
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$5;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    # setter for: Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mIsVtEnabled:Z
    invoke-static {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->access$1802(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Z)Z

    .line 1429
    :cond_7
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$5;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    # getter for: Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mIsVtEnabled:Z
    invoke-static {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->access$1800(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z

    move-result v1

    if-eq v0, v1, :cond_8

    .line 1430
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$5;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$5;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    # getter for: Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mIsVtEnabled:Z
    invoke-static {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->access$1800(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyForVideoCapabilityChanged(Z)V

    .line 1434
    .end local v0    # "tmpIsVtEnabled":Z
    :cond_8
    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$5;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onFeatureCapabilityChanged, mIsVolteEnabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$5;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    # getter for: Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mIsVolteEnabled:Z
    invoke-static {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->access$1900(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mIsVtEnabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$5;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    # getter for: Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mIsVtEnabled:Z
    invoke-static {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->access$1800(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1436
    return-void
.end method

.method public onImsConnected()V
    .locals 2

    .prologue
    .line 1376
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$5;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string v1, "onImsConnected"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1377
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$5;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setServiceState(I)V

    .line 1378
    return-void
.end method

.method public onImsDisconnected()V
    .locals 2

    .prologue
    .line 1382
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$5;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string v1, "onImsDisconnected"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1383
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$5;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setServiceState(I)V

    .line 1384
    return-void
.end method

.method public onImsResumed()V
    .locals 2

    .prologue
    .line 1388
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$5;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string v1, "onImsResumed"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1389
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$5;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setServiceState(I)V

    .line 1390
    return-void
.end method

.method public onImsSuspended()V
    .locals 2

    .prologue
    .line 1394
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$5;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    const-string v1, "onImsSuspended"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1395
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$5;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setServiceState(I)V

    .line 1396
    return-void
.end method

.method public onVoiceMessageCountChanged(I)V
    .locals 3
    .param p1, "count"    # I

    .prologue
    .line 1440
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$5;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVoiceMessageCountChanged :: count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1441
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$5;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/imsphone/ImsPhone;->mDefaultPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneBase;->setVoiceMessageCount(I)V

    .line 1442
    return-void
.end method
