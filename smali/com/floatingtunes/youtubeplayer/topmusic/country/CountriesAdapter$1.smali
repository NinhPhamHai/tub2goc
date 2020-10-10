.class Lcom/floatingtunes/youtubeplayer/topmusic/country/CountriesAdapter$1;
.super Ljava/lang/Object;
.source "CountriesAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/floatingtunes/youtubeplayer/topmusic/country/CountriesAdapter;->onBindViewHolder(Lcom/floatingtunes/youtubeplayer/topmusic/country/CountriesAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/floatingtunes/youtubeplayer/topmusic/country/CountriesAdapter;

.field final synthetic val$country:Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;


# direct methods
.method constructor <init>(Lcom/floatingtunes/youtubeplayer/topmusic/country/CountriesAdapter;Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountriesAdapter$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/country/CountriesAdapter;

    iput-object p2, p0, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountriesAdapter$1;->val$country:Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 58
    iget-object p1, p0, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountriesAdapter$1;->this$0:Lcom/floatingtunes/youtubeplayer/topmusic/country/CountriesAdapter;

    invoke-static {p1}, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountriesAdapter;->access$200(Lcom/floatingtunes/youtubeplayer/topmusic/country/CountriesAdapter;)Lcom/floatingtunes/youtubeplayer/topmusic/country/listeners/OnItemClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/floatingtunes/youtubeplayer/topmusic/country/CountriesAdapter$1;->val$country:Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;

    invoke-interface {p1, v0}, Lcom/floatingtunes/youtubeplayer/topmusic/country/listeners/OnItemClickListener;->onItemClicked(Lcom/floatingtunes/youtubeplayer/topmusic/country/Country;)V

    return-void
.end method
