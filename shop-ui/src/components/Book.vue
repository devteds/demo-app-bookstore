<template>
  <div>
        <div class="row">
            <div class="col-4">
                <h1 class="text-left">{{book.title}}</h1>
            </div>
            <div class="col-8">
                <div class="text-right">
                    <!-- <b-button size="sm" variant="secondary" style="margin-right: 2px;">
                        <icon name="database" scale="1" class='text-danger' v-if="book.sql_change == 1"></icon><br/>
                        <small>SQL Change</small>
                    </b-button> -->
                    
                    <!-- <span v-for="jbuild in book.jenkins_jobs">                                                          
                        <a v-bind:href="jbuild.job_url"  target="_blank" v-bind:title="jbuild.job_type">
                            <b-button size="sm" variant="secondary" style="margin-right: 2px;">
                                <icon name="circle" scale="1" v-bind:class="'text-' + jbuild.job_status_color"></icon><br/>
                                <small class="text-center text-default">{{ jbuild.job_type }}</small>
                            </b-button>                            
                        </a>
                    </span> -->

                    <!-- <b-button size="sm" variant="secondary" style="margin-right: 2px;"  v-if="book.behind == 1">
                        <icon name="circle" scale="1" class="text-danger"></icon>
                        <small>Behind Master</small>
                    </b-button> -->
                </div>
            </div>
        </div>
        
        <hr/>

        <div class="row">
            <div class="col-md-12">
                <div class="row">
                    <!-- <div class="col-6" v-for="jira in jiras">
                        <jira-item v-bind:jira='jira'></jira-item>
                    </div> -->
                </div>
            </div>
            
            <!-- <b-modal ref="jiraModal" size='lg' v-if="this.selectedJira != null">
                <jira v-bind:jira='selectedJira' ref='jiraView'></jira>
            </b-modal> -->
        </div>

  </div>
</template>

<script>
    // import JiraItem from './JiraItem'
    // import Jira from './Jira'
    // import GitCommits from './GitCommits'

    export default {
        name: 'book',
        components: {
            // JiraItem, GitCommits, Jira
        },
        data() {
            return {
                // jiras: [],
                // git_commits: [],
                book: {},
                // selectedJira: null
            }
        },
        methods: {
            // jiraUpdated: function(jira) {
            //     this.selectedJira = jira;
            //     this.$refs.jiraView.reload();
            // }
        },
        created: function() {
            this.$http.get('/api/books/' + this.$route.params.id)
            .then(function(response){
                this.book = response.data;
                
                // this.$http.get(this.book.jiras_url)
                // .then(function(response) {
                //     this.jiras = response.data;                    
                //     this.selectedJira = this.jiras[0];
                // })

                // this.$http.get(this.book.git_commits_url)
                // .then(function(response) {
                //     this.git_commits = response.data;
                // })
            })
        }
    }
</script>

<style scoped>
</style>
