.class public Lcom/android/internal/telephony/gsm/LGGsmSmsMessage$Dcs;
.super Ljava/lang/Object;
.source "LGGsmSmsMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Dcs"
.end annotation


# instance fields
.field private mAutomaticDeletion:Z

.field private mDataCodingScheme:I

.field private mEncodingType:I

.field private mIsMwi:Z

.field private mMessageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

.field protected mMwiDontStore:Z

.field private mMwiSense:Z

.field private mUserDataCompressed:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 2
    .param p1, "dataCodingScheme"    # I
    .param p2, "msgBody"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    iput v1, p0, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage$Dcs;->mDataCodingScheme:I

    .line 220
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage$Dcs;->mUserDataCompressed:Z

    .line 221
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage$Dcs;->mAutomaticDeletion:Z

    .line 222
    sget-object v0, Lcom/android/internal/telephony/SmsConstants$MessageClass;->UNKNOWN:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage$Dcs;->mMessageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    .line 223
    iput v1, p0, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage$Dcs;->mEncodingType:I

    .line 224
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage$Dcs;->mIsMwi:Z

    .line 225
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage$Dcs;->mMwiSense:Z

    .line 226
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage$Dcs;->mMwiDontStore:Z

    .line 251
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 252
    invoke-static {p2}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage$Dcs;->generateDcs(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage$Dcs;->setDataCodingScheme(I)V

    .line 256
    :goto_0
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage$Dcs;->parseDcs(Ljava/lang/String;)V

    .line 257
    return-void

    .line 254
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage$Dcs;->setDataCodingScheme(I)V

    goto :goto_0
.end method

.method private encodingShift(II)V
    .locals 3
    .param p1, "shift"    # I
    .param p2, "encodingType"    # I

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 307
    if-ne p1, v1, :cond_0

    .line 308
    packed-switch p2, :pswitch_data_0

    .line 316
    :pswitch_0
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage$Dcs;->setEncodingType(I)V

    .line 340
    :goto_0
    return-void

    .line 310
    :pswitch_1
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage$Dcs;->setEncodingType(I)V

    goto :goto_0

    .line 313
    :pswitch_2
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage$Dcs;->setEncodingType(I)V

    goto :goto_0

    .line 319
    :cond_0
    if-nez p1, :cond_1

    .line 320
    sparse-switch p2, :sswitch_data_0

    .line 327
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage$Dcs;->setEncodingType(I)V

    goto :goto_0

    .line 324
    :sswitch_0
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage$Dcs;->setEncodingType(I)V

    goto :goto_0

    .line 331
    :cond_1
    packed-switch p2, :pswitch_data_1

    .line 336
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage$Dcs;->setEncodingType(I)V

    goto :goto_0

    .line 333
    :pswitch_3
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage$Dcs;->setEncodingType(I)V

    goto :goto_0

    .line 308
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 320
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x7 -> :sswitch_0
    .end sparse-switch

    .line 331
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_3
    .end packed-switch
.end method

.method public static generateDcs(Ljava/lang/String;)I
    .locals 7
    .param p0, "messageBody"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 465
    if-nez p0, :cond_1

    .line 493
    :cond_0
    :goto_0
    return v4

    .line 470
    :cond_1
    :try_start_0
    invoke-static {p0}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;)[B

    .line 472
    invoke-static {}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;->isCountCharIndexInsteadOfSeptets()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 473
    const/4 v6, 0x0

    invoke-static {p0, v6}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v2

    .line 474
    .local v2, "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    if-nez v2, :cond_2

    .line 475
    new-instance v4, Lcom/android/internal/telephony/EncodeException;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/EncodeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 483
    .end local v2    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :catch_0
    move-exception v0

    .line 484
    .local v0, "ex":Lcom/android/internal/telephony/EncodeException;
    invoke-static {}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage;->isKSC5601Encoding()Z

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_3

    .line 486
    :try_start_1
    const-string v4, "euc-kr"

    invoke-virtual {p0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 491
    const/16 v4, 0x84

    goto :goto_0

    .line 477
    .end local v0    # "ex":Lcom/android/internal/telephony/EncodeException;
    .restart local v2    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :cond_2
    :try_start_2
    iget v1, v2, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    .line 478
    .local v1, "septets":I
    sget v6, Landroid/telephony/LGSmsMessageImpl;->LIMIT_USER_DATA_SEPTETS:I

    if-le v1, v6, :cond_0

    .line 479
    new-instance v4, Lcom/android/internal/telephony/EncodeException;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/EncodeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_2
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 487
    .end local v1    # "septets":I
    .end local v2    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .restart local v0    # "ex":Lcom/android/internal/telephony/EncodeException;
    :catch_1
    move-exception v3

    .local v3, "uex":Ljava/io/UnsupportedEncodingException;
    move v4, v5

    .line 489
    goto :goto_0

    .end local v3    # "uex":Ljava/io/UnsupportedEncodingException;
    :cond_3
    move v4, v5

    .line 493
    goto :goto_0
.end method

.method public static getGeneralPublicDataCodingScheme(I)I
    .locals 1
    .param p0, "encodingType"    # I

    .prologue
    .line 499
    packed-switch p0, :pswitch_data_0

    .line 507
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 501
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 503
    :pswitch_1
    const/16 v0, 0x84

    goto :goto_0

    .line 505
    :pswitch_2
    const/16 v0, 0x8

    goto :goto_0

    .line 499
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private parseDcs(Ljava/lang/String;)V
    .locals 6
    .param p1, "msgBody"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 260
    const/4 v0, 0x0

    .line 267
    .local v0, "hasMessageClass":Z
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage$Dcs;->setEncodingType(I)V

    .line 269
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage$Dcs;->getDataCodingScheme()I

    move-result v2

    and-int/lit16 v2, v2, 0xf0

    const/16 v5, 0xf0

    if-ne v2, v5, :cond_0

    .line 271
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage$Dcs;->setAutomaticDeletion(Z)V

    .line 272
    const/4 v0, 0x1

    .line 273
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage$Dcs;->setUserDataCompressed(Z)V

    .line 274
    const/4 v1, 0x2

    .line 275
    .local v1, "shift":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage$Dcs;->getDataCodingScheme()I

    move-result v2

    shr-int/2addr v2, v1

    and-int/lit8 v2, v2, 0x3

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage$Dcs;->encodingShift(II)V

    .line 301
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage$Dcs;->setMessageClass(Z)V

    .line 302
    return-void

    .line 276
    .end local v1    # "shift":I
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage$Dcs;->getDataCodingScheme()I

    move-result v2

    and-int/lit16 v2, v2, 0x80

    if-nez v2, :cond_5

    .line 278
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage$Dcs;->getDataCodingScheme()I

    move-result v2

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_1

    move v2, v3

    :goto_1
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage$Dcs;->setAutomaticDeletion(Z)V

    .line 279
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage$Dcs;->getDataCodingScheme()I

    move-result v2

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_2

    move v2, v3

    :goto_2
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage$Dcs;->setUserDataCompressed(Z)V

    .line 280
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage$Dcs;->getDataCodingScheme()I

    move-result v2

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_3

    move v0, v3

    .line 281
    :goto_3
    const/4 v1, 0x2

    .line 282
    .restart local v1    # "shift":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage$Dcs;->isUserDataCompressed()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 283
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseDcs(), 4 - Unsupported SMS data coding scheme (compression) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage$Dcs;->getDataCodingScheme()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/lgeautoprofiling/LGSmsLog;->w(Ljava/lang/String;)I

    goto :goto_0

    .end local v1    # "shift":I
    :cond_1
    move v2, v4

    .line 278
    goto :goto_1

    :cond_2
    move v2, v4

    .line 279
    goto :goto_2

    :cond_3
    move v0, v4

    .line 280
    goto :goto_3

    .line 286
    .restart local v1    # "shift":I
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage$Dcs;->getDataCodingScheme()I

    move-result v2

    shr-int/2addr v2, v1

    and-int/lit8 v2, v2, 0x3

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage$Dcs;->encodingShift(II)V

    goto :goto_0

    .line 288
    .end local v1    # "shift":I
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage$Dcs;->getDataCodingScheme()I

    move-result v2

    and-int/lit16 v2, v2, 0xc0

    const/16 v3, 0x80

    if-ne v2, v3, :cond_6

    .line 290
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage$Dcs;->setAutomaticDeletion(Z)V

    .line 291
    const/4 v0, 0x0

    .line 292
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage$Dcs;->setUserDataCompressed(Z)V

    .line 293
    const/4 v1, 0x0

    .line 294
    .restart local v1    # "shift":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage$Dcs;->getDataCodingScheme()I

    move-result v2

    and-int/lit8 v2, v2, 0x7

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage$Dcs;->encodingShift(II)V

    goto :goto_0

    .line 297
    .end local v1    # "shift":I
    :cond_6
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage$Dcs;->setMwi(Z)V

    .line 298
    const/4 v1, 0x4

    .line 299
    .restart local v1    # "shift":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage$Dcs;->getDataCodingScheme()I

    move-result v2

    shr-int/2addr v2, v1

    and-int/lit8 v2, v2, 0x3

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage$Dcs;->encodingShift(II)V

    goto/16 :goto_0
.end method

.method private setAutomaticDeletion(Z)V
    .locals 0
    .param p1, "automaticDeletion"    # Z

    .prologue
    .line 376
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage$Dcs;->mAutomaticDeletion:Z

    .line 377
    return-void
.end method

.method private setDataCodingScheme(I)V
    .locals 0
    .param p1, "dataCodingScheme"    # I

    .prologue
    .line 346
    iput p1, p0, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage$Dcs;->mDataCodingScheme:I

    .line 347
    return-void
.end method

.method private setMessageClass(Z)V
    .locals 1
    .param p1, "hasMessageClass"    # Z

    .prologue
    .line 391
    if-nez p1, :cond_0

    .line 392
    sget-object v0, Lcom/android/internal/telephony/SmsConstants$MessageClass;->UNKNOWN:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage$Dcs;->mMessageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    .line 409
    :goto_0
    return-void

    .line 394
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage$Dcs;->getDataCodingScheme()I

    move-result v0

    and-int/lit8 v0, v0, 0x3

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 396
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_0:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage$Dcs;->mMessageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    goto :goto_0

    .line 399
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_1:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage$Dcs;->mMessageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    goto :goto_0

    .line 402
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_2:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage$Dcs;->mMessageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    goto :goto_0

    .line 405
    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_3:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage$Dcs;->mMessageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    goto :goto_0

    .line 394
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setMwi(Z)V
    .locals 0
    .param p1, "isMwi"    # Z

    .prologue
    .line 439
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage$Dcs;->mIsMwi:Z

    .line 440
    return-void
.end method

.method private setMwiSense(Z)V
    .locals 0
    .param p1, "mwiSense"    # Z

    .prologue
    .line 453
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage$Dcs;->mMwiSense:Z

    .line 454
    return-void
.end method

.method private setUserDataCompressed(Z)V
    .locals 0
    .param p1, "userDataCompressed"    # Z

    .prologue
    .line 362
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage$Dcs;->mUserDataCompressed:Z

    .line 363
    return-void
.end method


# virtual methods
.method public getDataCodingScheme()I
    .locals 1

    .prologue
    .line 355
    iget v0, p0, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage$Dcs;->mDataCodingScheme:I

    return v0
.end method

.method public getEncodingType()I
    .locals 1

    .prologue
    .line 432
    iget v0, p0, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage$Dcs;->mEncodingType:I

    return v0
.end method

.method public getMessageClass()Lcom/android/internal/telephony/SmsConstants$MessageClass;
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage$Dcs;->mMessageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    return-object v0
.end method

.method public isAutomaticDeletion()Z
    .locals 1

    .prologue
    .line 383
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage$Dcs;->mAutomaticDeletion:Z

    return v0
.end method

.method public isMwi()Z
    .locals 1

    .prologue
    .line 446
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage$Dcs;->mIsMwi:Z

    return v0
.end method

.method public isMwiSense()Z
    .locals 1

    .prologue
    .line 460
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage$Dcs;->mMwiSense:Z

    return v0
.end method

.method public isUserDataCompressed()Z
    .locals 1

    .prologue
    .line 369
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage$Dcs;->mUserDataCompressed:Z

    return v0
.end method

.method public setEncodingType(I)V
    .locals 0
    .param p1, "encodingType"    # I

    .prologue
    .line 423
    iput p1, p0, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage$Dcs;->mEncodingType:I

    .line 424
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DCS: dataCodingScheme = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage$Dcs;->getDataCodingScheme()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", this.userDataCompressed = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage$Dcs;->isUserDataCompressed()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", this.automaticDeletion = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage$Dcs;->isAutomaticDeletion()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", this.messageClass = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage$Dcs;->getMessageClass()Lcom/android/internal/telephony/SmsConstants$MessageClass;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", encodingType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage$Dcs;->getEncodingType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isMwi = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage$Dcs;->isMwi()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mwiSense = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage$Dcs;->isMwiSense()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mwiDontStore = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/LGGsmSmsMessage$Dcs;->mMwiDontStore:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
