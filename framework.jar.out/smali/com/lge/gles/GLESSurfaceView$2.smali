.class Lcom/lge/gles/GLESSurfaceView$2;
.super Ljava/lang/Object;
.source "GLESSurfaceView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/gles/GLESSurfaceView;->touchUp(FFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/gles/GLESSurfaceView;

.field final synthetic val$userData:F

.field final synthetic val$x:F

.field final synthetic val$y:F


# direct methods
.method constructor <init>(Lcom/lge/gles/GLESSurfaceView;FFF)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/lge/gles/GLESSurfaceView$2;->this$0:Lcom/lge/gles/GLESSurfaceView;

    iput p2, p0, Lcom/lge/gles/GLESSurfaceView$2;->val$x:F

    iput p3, p0, Lcom/lge/gles/GLESSurfaceView$2;->val$y:F

    iput p4, p0, Lcom/lge/gles/GLESSurfaceView$2;->val$userData:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 165
    iget-object v0, p0, Lcom/lge/gles/GLESSurfaceView$2;->this$0:Lcom/lge/gles/GLESSurfaceView;

    iget-object v0, v0, Lcom/lge/gles/GLESSurfaceView;->mRenderer:Lcom/lge/gles/GLESRenderer;

    iget v1, p0, Lcom/lge/gles/GLESSurfaceView$2;->val$x:F

    iget v2, p0, Lcom/lge/gles/GLESSurfaceView$2;->val$y:F

    iget v3, p0, Lcom/lge/gles/GLESSurfaceView$2;->val$userData:F

    invoke-interface {v0, v1, v2, v3}, Lcom/lge/gles/GLESRenderer;->touchUp(FFF)V

    .line 166
    return-void
.end method
