.class final Lcom/android/nfc/cardemulation/PreferredServices$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "PreferredServices.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/cardemulation/PreferredServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/cardemulation/PreferredServices;


# direct methods
.method public constructor <init>(Lcom/android/nfc/cardemulation/PreferredServices;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/nfc/cardemulation/PreferredServices$SettingsObserver;->this$0:Lcom/android/nfc/cardemulation/PreferredServices;

    .line 117
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 118
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 122
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 126
    iget-object v1, p0, Lcom/android/nfc/cardemulation/PreferredServices$SettingsObserver;->this$0:Lcom/android/nfc/cardemulation/PreferredServices;

    invoke-virtual {v1}, Lcom/android/nfc/cardemulation/PreferredServices;->setInitHCEPopupValue()V

    .line 127
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 128
    .local v0, "currentUser":I
    iget-object v1, p0, Lcom/android/nfc/cardemulation/PreferredServices$SettingsObserver;->this$0:Lcom/android/nfc/cardemulation/PreferredServices;

    invoke-virtual {v1, v0}, Lcom/android/nfc/cardemulation/PreferredServices;->loadDefaultsFromSettings(I)V

    .line 129
    return-void
.end method
