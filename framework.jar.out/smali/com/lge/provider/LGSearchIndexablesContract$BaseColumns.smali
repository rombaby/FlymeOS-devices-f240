.class Lcom/lge/provider/LGSearchIndexablesContract$BaseColumns;
.super Ljava/lang/Object;
.source "LGSearchIndexablesContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/provider/LGSearchIndexablesContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BaseColumns"
.end annotation


# static fields
.field public static final COLUMN_CLASS_NAME:Ljava/lang/String; = "className"

.field public static final COLUMN_ICON_RESID:Ljava/lang/String; = "iconResId"

.field public static final COLUMN_INTENT_ACTION:Ljava/lang/String; = "intentAction"

.field public static final COLUMN_INTENT_TARGET_CLASS:Ljava/lang/String; = "intentTargetClass"

.field public static final COLUMN_INTENT_TARGET_PACKAGE:Ljava/lang/String; = "intentTargetPackage"

.field public static final COLUMN_RANK:Ljava/lang/String; = "rank"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 272
    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/provider/LGSearchIndexablesContract$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lge/provider/LGSearchIndexablesContract$1;

    .prologue
    .line 270
    invoke-direct {p0}, Lcom/lge/provider/LGSearchIndexablesContract$BaseColumns;-><init>()V

    return-void
.end method
