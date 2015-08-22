.class public abstract Lcom/android/internal/telephony/ConnectionEx;
.super Lcom/android/internal/telephony/Connection;
.source "ConnectionEx.java"

# interfaces
.implements Lcom/android/internal/telephony/SrvccConnection;


# static fields
.field private static LOG_TAG:Ljava/lang/String;


# instance fields
.field protected mAlertTime:J

.field protected mCdnipNumber:Ljava/lang/String;

.field protected mOriginalNumber:Ljava/lang/String;

.field protected mRedialNumber:Ljava/lang/String;

.field protected mRingbackToneSignal:I

.field protected mTOA:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-string v0, "ConnectionEx"

    sput-object v0, Lcom/android/internal/telephony/ConnectionEx;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 16
    invoke-direct {p0}, Lcom/android/internal/telephony/Connection;-><init>()V

    .line 23
    iput-object v1, p0, Lcom/android/internal/telephony/ConnectionEx;->mOriginalNumber:Ljava/lang/String;

    .line 24
    iput-object v1, p0, Lcom/android/internal/telephony/ConnectionEx;->mCdnipNumber:Ljava/lang/String;

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/ConnectionEx;->mTOA:I

    .line 31
    iput-object v1, p0, Lcom/android/internal/telephony/ConnectionEx;->mRedialNumber:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAlertTime()J
    .locals 2

    .prologue
    .line 134
    iget-wide v0, p0, Lcom/android/internal/telephony/ConnectionEx;->mAlertTime:J

    return-wide v0
.end method

.method public getCdnipNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/internal/telephony/ConnectionEx;->mCdnipNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/internal/telephony/ConnectionEx;->mOriginalNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getPrivateLogHandler(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 107
    const/16 v0, 0x10

    invoke-static {p1, v0}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->privateLogHandler(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRedialNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/internal/telephony/ConnectionEx;->mRedialNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getRingbackToneSignal()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/android/internal/telephony/ConnectionEx;->mRingbackToneSignal:I

    return v0
.end method

.method public getToa()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/android/internal/telephony/ConnectionEx;->mTOA:I

    return v0
.end method

.method public isConfConn()Z
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method public resetAutoRetryEmergencyCall(Landroid/content/Context;ILjava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cause"    # I
    .param p3, "address"    # Ljava/lang/String;

    .prologue
    .line 113
    const/4 v0, 0x0

    const-string v1, "support_network_change_auto_retry"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->isSupportedFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    invoke-static {p3}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    .line 116
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/ConnectionEx;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cause = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "address = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {p3, v2}, Lcom/android/internal/telephony/lgeautoprofiling/LgeAutoProfiling;->privateLogHandler(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "network_change_auto_retry"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 123
    :cond_1
    return-void
.end method

.method public setOriginalNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "pOriginalNumber"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/internal/telephony/ConnectionEx;->mOriginalNumber:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setRedialNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "redialNumber"    # Ljava/lang/String;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/internal/telephony/ConnectionEx;->mRedialNumber:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public setRingbackToneSignal(I)V
    .locals 0
    .param p1, "sig"    # I

    .prologue
    .line 75
    iput p1, p0, Lcom/android/internal/telephony/ConnectionEx;->mRingbackToneSignal:I

    .line 76
    return-void
.end method
