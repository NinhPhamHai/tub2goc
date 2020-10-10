.class Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity$1;
.super Ljava/lang/Object;
.source "RadioListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity;


# direct methods
.method constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 93
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/radio/RadioListActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
