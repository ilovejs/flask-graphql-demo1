from flask import Flask, request, jsonify
from flask_graphql import GraphQLView
# custom lib
from service.graphql.graphql_schema import schema

app = Flask(__name__)

@app.route('/foo')
def index():
    return request.base_url

app.add_url_rule('/graphql', 
    view_func=GraphQLView.as_view('graphql', 
        schema=schema, graphiql=True))

# Optional Batch api

# app.add_url_rule('/graphql/batch', 
#     view_func=GraphQLView.as_view('graphql', 
#         schema=schema, batch=True))

if __name__ == '__main__':
    app.run()