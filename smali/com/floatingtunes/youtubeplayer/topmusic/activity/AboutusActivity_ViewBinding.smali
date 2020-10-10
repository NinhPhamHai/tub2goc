.class public Lcom/floatingtunes/youtubeplayer/topmusic/activity/AboutusActivity_ViewBinding;
.super Ljava/lang/Object;
.source "AboutusActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/floatingtunes/youtubeplayer/topmusic/activity/AboutusActivity;


# direct methods
.method public constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/activity/AboutusActivity;Landroid/view/View;)V
    .locals 3

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/AboutusActivity_ViewBinding;->target:Lcom/floatingtunes/youtubeplayer/topmusic/activity/AboutusActivity;

    .line 28
    const-class v0, Landroidx/appcompat/widget/Toolbar;

    const v1, 0x7f090007

    const-string v2, "field \'mAboutToolbar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/activity/AboutusActivity;->mAboutToolbar:Landroidx/appcompat/widget/Toolbar;

    .line 29
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0902d3

    const-string v2, "field \'mVersion\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/floatingtunes/youtubeplayer/topmusic/activity/AboutusActivity;->mVersion:Landroid/widget/TextView;

    .line 30
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f090148

    const-string v2, "field \'mLlProgress\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p1, Lcom/floatingtunes/youtubeplayer/topmusic/activity/AboutusActivity;->mLlProgress:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/AboutusActivity_ViewBinding;->target:Lcom/floatingtunes/youtubeplayer/topmusic/activity/AboutusActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 38
    iput-object v1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/AboutusActivity_ViewBinding;->target:Lcom/floatingtunes/youtubeplayer/topmusic/activity/AboutusActivity;

    .line 40
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/AboutusActivity;->mAboutToolbar:Landroidx/appcompat/widget/Toolbar;

    .line 41
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/AboutusActivity;->mVersion:Landroid/widget/TextView;

    .line 42
    iput-object v1, v0, Lcom/floatingtunes/youtubeplayer/topmusic/activity/AboutusActivity;->mLlProgress:Landroid/widget/LinearLayout;

    return-void

    .line 37
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
