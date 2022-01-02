import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class InterviewExp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: InterViewExpPage(),
    );
  }
}

class InterViewExpPage extends StatefulWidget {

  @override
  _InterViewExpPageState createState() => _InterViewExpPageState();
}

class _InterViewExpPageState extends State<InterViewExpPage> {
  _launchURLApp(String url) async {
    // if (await canLaunch(url)) {
    //   await launch(url, forceSafariVC: true, forceWebView: true);
    // } else {
    //   throw 'Could not launch $url';
    // }
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Interview Experience'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Card(
                clipBehavior: Clip.antiAlias,
                child: Column(
                  children: [
                    ListTile(
                      title: const Text(
                        'Amazon',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        'Software Development Engineering (SDE)',
                        style: TextStyle(color: Colors.black.withOpacity(0.8)),
                      ),
                    ),
                    Padding(
                       padding: const EdgeInsets.fromLTRB(16.0, 0, 16.0, 16.0),
                      child: Text(
                        'Round 1 : 7 questions in C, C++ or Java to be solved in 20 minutes. I took this too lightly and tried solving them in a crowded environment which made me face a time crunch. I was able to get 6/7 correct. Although it is very easy to get 7/7. Lesson learnt: do not take anything lightly!',
                        style: TextStyle(color: Colors.black.withOpacity(0.6)),
                      ),
                    ),
                    ButtonBar(
                      alignment: MainAxisAlignment.start,
                      children: [
                        RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.deepOrange)),
                          onPressed: () {
                            _launchURLApp(
                                'https://leetcode.com/discuss/interview-experience/418395/Amazon-or-SDE1-or-Seattle-or-Oct-2019-Offer');
                          },
                          padding: EdgeInsets.all(10.0),
                          color: Colors.white,
                          textColor: Colors.deepOrange,
                          child:
                          Text("Read More", style: TextStyle(fontSize: 14)),
                        ),
                      ],
                    ),
                  ],
                ),
                elevation: 8,
                shadowColor: Colors.deepOrange,
                margin: EdgeInsets.all(20),
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                child: Column(
                  children: [
                    ListTile(
                      title: const Text(
                        'Google',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        'Software Enginnering',
                        style: TextStyle(color: Colors.black.withOpacity(0.8)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16.0, 0, 16.0, 16.0),
                      child: Text(
                        'I was contacted by the Google recruiter around last week of March through Linkedin. I got a call from the recruiter around April first week to begin with the interview process. Since I was completely out of touch, I asked for a month time to prepare for the telephonic interview. However the recruiter gave me 2 weeks of time to prepare for the telephonic round, and told that he will give me 1 month extra time to prepare for the onsite rounds once the telephonic round is cleared.',
                        style: TextStyle(color: Colors.black.withOpacity(0.6)),
                      ),
                    ),
                    ButtonBar(
                      alignment: MainAxisAlignment.start,
                      children: [
                        RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.deepOrange)),
                          onPressed: () {
                            _launchURLApp(
                                'https://leetcode.com/discuss/interview-experience/776280/Google-or-L3-or-Bangalore-or-July-2020-Offer');
                          },
                          padding: EdgeInsets.all(10.0),
                          color: Colors.white,
                          textColor: Colors.deepOrange,
                          child:
                          Text("Read More", style: TextStyle(fontSize: 14)),
                        ),
                      ],
                    ),
                  ],
                ),
                elevation: 8,
                shadowColor: Colors.deepOrange,
                margin: EdgeInsets.all(20),
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                child: Column(
                  children: [
                    ListTile(
                      title: const Text(
                        'Facebook',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        'Senior Software Engineer (E5)',
                        style: TextStyle(color: Colors.black.withOpacity(0.8)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16.0, 0, 16.0, 16.0),
                      child: Text(
                        '''Phone Screen
Interviewer asked two coding questions. It was a 45 minute round.
1650. Lowest Common Ancestor of a Binary Tree III - Only node1 and node2 are given as input. Each node also has a pointer to its parent.
1570. Dot Product of Two Sparse Vectors
My approach for answering Coding Questions:
Understand the problem. Ask clarifying questions.
Verbally explain the solution for the problem.
Also, provide the expected Time & Space complexity of the solution.
Once the interviewer is satisfied with the verbal solution, quickly implement it and then do a dry run with a few test cases covering corner cases.
Explain the Time & Space complexity of the written solution.''',
                        style: TextStyle(color: Colors.black.withOpacity(0.6)),
                      ),
                    ),
                    ButtonBar(
                      alignment: MainAxisAlignment.start,
                      children: [
                        RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.deepOrange)),
                          onPressed: () {
                            _launchURLApp(
                                'https://leetcode.com/discuss/interview-experience/1623547/Facebook-or-E5-or-Phone-Screen-%2B-Virtual-Onsite');
                          },
                          padding: EdgeInsets.all(10.0),
                          color: Colors.white,
                          textColor: Colors.deepOrange,
                          child:
                          Text("Read More", style: TextStyle(fontSize: 14)),
                        ),
                      ],
                    ),
                  ],
                ),
                elevation: 8,
                shadowColor: Colors.deepOrange,
                margin: EdgeInsets.all(20),
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                child: Column(
                  children: [
                    ListTile(
                      title: const Text(
                        'Apple',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        'Software Development Engineering (SDE3)',
                        style: TextStyle(color: Colors.black.withOpacity(0.8)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16.0, 0, 16.0, 16.0),
                      child: Text(
                        '''Current position: SWE at a medium company (100k TC)
Background: MSCS + 1 Year of experience
How did I prepare? I read these books and do leetcode (mainly) about 400 questions.
Cracking The Coding Interview
Elements of Programming Interviews
Programming Interviews Exposed
Did you get the offer?
Yes. It took about 2.5 weeks. 160k base | 180k stock (4 years) | 25k Signon bonus
How did I get the interview?
A recruiter DM me on Linkedin.''',
                        style: TextStyle(color: Colors.black.withOpacity(0.6)),
                      ),
                    ),
                    ButtonBar(
                      alignment: MainAxisAlignment.start,
                      children: [
                        RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.deepOrange)),
                          onPressed: () {
                            _launchURLApp(
                                'https://leetcode.com/discuss/interview-experience/368422/Apple-or-SDE-(ICT3)-or-Cupertino-or-Aug-2019-Offer');
                          },
                          padding: EdgeInsets.all(10.0),
                          color: Colors.white,
                          textColor: Colors.deepOrange,
                          child:
                          Text("Read More", style: TextStyle(fontSize: 14)),
                        ),
                      ],
                    ),
                  ],
                ),
                elevation: 8,
                shadowColor: Colors.deepOrange,
                margin: EdgeInsets.all(20),
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                child: Column(
                  children: [
                    ListTile(
                      title: const Text(
                        'Bloomberg',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        'Software Engineering',
                        style: TextStyle(color: Colors.black.withOpacity(0.8)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16.0, 0, 16.0, 16.0),
                      child: Text(
                        '''Phone Screen
The interviewer was nice and friendly, and jumped into the technical part of the interview after a brief resume review.
The first question was non-coding and just asked to print unique numbers from a string of numbers. I said use a set, then we got into the specifics of hashing and how hash tables work.
The next question involved coding, where I had to sort the children of each node in a tree, where each node contains a list of the children. The subtrees needed to get carried over as well. I first tried with level order traversal, but then later realized (with the help of hints) that I can call node.children.sort() recursively. He was happy so we moved to the next question.
This was the 2-city-scheduling problem from LeetCode, solved it and he was happy.
Last few minutes were for my questions, just asked about projects etc. Make sure to prepare for this part too – ask good questions!
''',
                        style: TextStyle(color: Colors.black.withOpacity(0.6)),
                      ),
                    ),
                    ButtonBar(
                      alignment: MainAxisAlignment.start,
                      children: [
                        RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.deepOrange)),
                          onPressed: () {
                            _launchURLApp(
                                'https://leetcode.com/discuss/interview-experience/720442/Bloomberg-or-Software-Engineer-(New-Grad)-or-NYC-or-June-2020-Offer');
                          },
                          padding: EdgeInsets.all(10.0),
                          color: Colors.white,
                          textColor: Colors.deepOrange,
                          child:
                          Text("Read More", style: TextStyle(fontSize: 14)),
                        ),
                      ],
                    ),
                  ],
                ),
                elevation: 8,
                shadowColor: Colors.deepOrange,
                margin: EdgeInsets.all(20),
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                child: Column(
                  children: [
                    ListTile(
                      title: const Text(
                        'Microsoft',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        'Software Development Engineering (SDE)',
                        style: TextStyle(color: Colors.black.withOpacity(0.8)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16.0, 0, 16.0, 16.0),
                      child: Text(
                        '''Round 1: An unsorted array is given and a number is given. You need to find the number closest to it. If multiple answers is possible give any one.
Think about corner cases. I gave O(N) solution. Then he asked what if the array is sorted. Expected time complexity is O(logN) without using any other class or struct.
Note: I missed corner case where numbers are repeating when he had asked whether you are missing any corner cases.
Code was written on collabedit Code was dry run not actual compliation''',
                        style: TextStyle(color: Colors.black.withOpacity(0.6)),
                      ),
                    ),
                    ButtonBar(
                      alignment: MainAxisAlignment.start,
                      children: [
                        RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.deepOrange)),
                          onPressed: () {
                            _launchURLApp(
                                'https://leetcode.com/discuss/interview-experience/694893/Microsoft-or-SDE2-or-Hyderabad-or-OFFER');
                          },
                          padding: EdgeInsets.all(10.0),
                          color: Colors.white,
                          textColor: Colors.deepOrange,
                          child:
                          Text("Read More", style: TextStyle(fontSize: 14)),
                        ),
                      ],
                    ),
                  ],
                ),
                elevation: 8,
                shadowColor: Colors.deepOrange,
                margin: EdgeInsets.all(20),
              ),
              Card(
                clipBehavior: Clip.antiAlias,
                child: Column(
                  children: [
                    ListTile(
                      title: const Text(
                        'Verifone',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        'Senior Software Enginner',
                        style: TextStyle(color: Colors.black.withOpacity(0.8)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16.0, 0, 16.0, 16.0),
                      child: Text(
                        '''Company: Verifone
Position: Senior Software Engineer
Location: Santa Clara,CA
Telephonic: 30 min
Performance Bottleneck Analysis, Database Performance Analysis, Deadlock Detection, Architectural Design, Tools used for analysis
Onsite:
Round 1: System Design -
Question:Verifone Speicific Domain of IOT device management and update basic architecture provided
Define from datamodel to archiectural components , interaction, REST api design.
Push/Pull Technologies with respect to web application and IOT devices''',
                        style: TextStyle(color: Colors.black.withOpacity(0.6)),
                      ),
                    ),
                    ButtonBar(
                      alignment: MainAxisAlignment.start,
                      children: [
                        RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.deepOrange)),
                          onPressed: () {
                            _launchURLApp(
                                'https://leetcode.com/discuss/interview-experience/131496/Verifone-Senior-Software-Engineer');
                          },
                          padding: EdgeInsets.all(10.0),
                          color: Colors.white,
                          textColor: Colors.deepOrange,
                          child:
                          Text("Read More", style: TextStyle(fontSize: 14)),
                        ),
                      ],
                    ),
                  ],
                ),
                elevation: 8,
                shadowColor: Colors.deepOrange,
                margin: EdgeInsets.all(20),
              ),
            ],
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}