import os, sys, subprocess, sqlite3
from cache_effects import cache_metaquery_all, cache_process, cache_query_all
from fallback_finding import f1_metaquery_all, f1_process, f1_query_all
from fallback_across_executions import f2_metaquery_all, f2_process, f2_query_all

cache_traces = {
        'cache_effects': ['trace_1', 'trace_2', 'trace_3', 'trace_4', 'trace_5',\
                'trace_6', 'trace_7', 'trace_8', 'trace_8', 'trace_9', \
                'trace_10', 'trace_11', 'trace_12', 'trace_13', 'trace_14']
        }

fallback1_traces = {
        'FI_traces/hipster_shop/before':['t1'],#'t2','t3','t4','t5','t6','t7','t8','t9','t10'],
        'FI_traces/hipster_shop/adsvc_down':['t1','t2','t3','t4','t5','t6','t7','t8','t9','t10'],
        'FI_traces/hipster_shop/frontend-adsvc_down':['t1'],#'t2','t3','t4','t5','t6','t7','t8','t9','t10'],
        'FI_traces/hipster_shop/product_down':['t1','t2','t3','t4','t5'],
        'FI_traces/hipster_shop/product-adsvc_down':['t1','t2','t3','t4','t5','t6','t7','t8','t9','t10'],
        'filibuster_traces/cinema_6/all_up': ['trace1', 'trace2', 'trace3'],
        'filibuster_traces/cinema_6/bookings1_error': ['trace1', 'trace2', 'trace3'],
        'filibuster_traces/expedia/all_up': ['trace1', 'trace2'],
        'filibuster_traces/expedia/reviews_error': ['trace1', 'trace2'],
        'filibuster_traces/netflix/all_up': ['trace1', 'trace2', 'trace3'],
        'filibuster_traces/netflix/bkmarks_error': ['trace1', 'trace2', 'trace3'],
        'filibuster_traces/netflix/user_recs_error': ['trace1', 'trace2', 'trace3']
        } 
        
fallback2_traces = {
        'FI_traces/hipster_shop/before':['t1'],#'t2','t3','t4','t5','t6','t7','t8','t9','t10'],
        'FI_traces/hipster_shop/adsvc_down':['t1','t2','t3','t4','t5','t6','t7','t8','t9','t10'],
        'FI_traces/hipster_shop/frontend-adsvc_down':['t1'],#'t2','t3','t4','t5','t6','t7','t8','t9','t10'],
        'FI_traces/hipster_shop/product_down':['t1','t2','t3','t4','t5'],
        'FI_traces/hipster_shop/product-adsvc_down':['t1','t2','t3','t4','t5','t6','t7','t8','t9','t10'],
        'filibuster_traces/cinema_6/all_up': ['trace1', 'trace2', 'trace3'],
        'filibuster_traces/cinema_6/bookings1_down': ['trace1', 'trace2', 'trace3'],
        'filibuster_traces/expedia/all_up': ['trace1', 'trace2'],
        'filibuster_traces/expedia/reviews_down': ['trace1', 'trace2'],
        'filibuster_traces/netflix/all_up': ['trace1', 'trace2', 'trace3'],
        'filibuster_traces/netflix/bkmarks_down': ['trace1', 'trace2', 'trace3'],
        'filibuster_traces/netflix/user_recs_down': ['trace1', 'trace2', 'trace3']
        } 

if sys.argv[1] == 'cache':
	cache_process(cache_traces,'result.sql')
	cache_query_all('result.sql')
	os.system('rm result.sql')
	for i in range(14):
		os.system('rm cache_effects_trace_'+str(i+1)+'.sql')
elif sys.argv[1] == 'fallback1':
	traces = {}
	application = input('please enter one of the following applications: hipstershop, cinema6, expedia, or netflix: ')
	if application == 'hipstershop':
		traces['FI_traces/hipster_shop/before'] = fallback1_traces['FI_traces/hipster_shop/before']
		crash = input('please enter a service to crash: ads, frontend-ads, product, product-ads: ')
		if crash == 'ads':
			traces['FI_traces/hipster_shop/adsvc_down'] = fallback1_traces['FI_traces/hipster_shop/adsvc_down']
		elif crash == 'frontend-ads':
			traces['FI_traces/hipster_shop/frontend-adsvc_down'] = fallback1_traces['FI_traces/hipster_shop/frontend-adsvc_down']
		elif crash == 'product':
			traces['FI_traces/hipster_shop/product_down'] = fallback1_traces['FI_traces/hipster_shop/product_down']
		elif crash == 'product-ads':
			traces['FI_traces/hipster_shop/product-adsvc_down'] = fallback1_traces['FI_traces/hipster_shop/product-adsvc_down']
		else:
			print('invalid service, please enter one of the following: ads, frontend-ads, product, product-ads')	
	elif application == 'cinema6':
		traces['filibuster_traces/cinema_6/all_up'] = fallback1_traces['filibuster_traces/cinema_6/all_up']
		traces['filibuster_traces/cinema_6/bookings1_error'] = fallback1_traces['filibuster_traces/cinema_6/bookings1_error']
	elif application == 'expedia':
		traces['filibuster_traces/expedia/all_up'] = fallback1_traces['filibuster_traces/expedia/all_up']
		traces['filibuster_traces/expedia/reviews_error'] = fallback1_traces['filibuster_traces/expedia/reviews_error']
	elif application == 'netflix':
		traces['filibuster_traces/netflix/all_up'] = fallback1_traces['filibuster_traces/netflix/all_up']
		crash = input('please enter a service to crash: bookmarks or recommendations: ')
		if crash == 'bookmarks':
			traces['filibuster_traces/netflix/bkmarks_error'] = fallback1_traces['filibuster_traces/netflix/bkmarks_error']
		elif crash == 'recommendations':
			traces['filibuster_traces/netflix/user_recs_error'] = fallback1_traces['filibuster_traces/netflix/user_recs_error']
		else:
			print('invalid service, please enter one of the following: bookmarks or recommendations')	
	else:
		print('invalid application, please enter one of the following: hipstershop, cinema6, expedia, or netflix')	
	f1_process(traces,'result.sql')
	f1_query_all('result.sql')
	os.system('rm result.sql')
elif sys.argv[1] == 'fallback2':
	traces = {}
	application = input('please enter one of the following applications: hipstershop, cinema6, expedia, or netflix: ')
	if application == 'hipstershop':
		traces['FI_traces/hipster_shop/before'] = fallback2_traces['FI_traces/hipster_shop/before']
		crash = input('please enter a service to crash: ads, frontend-ads, product, product-ads: ')
		if crash == 'ads':
			traces['FI_traces/hipster_shop/adsvc_down'] = fallback2_traces['FI_traces/hipster_shop/adsvc_down']
		elif crash == 'frontend-ads':
			traces['FI_traces/hipster_shop/frontend-adsvc_down'] = fallback2_traces['FI_traces/hipster_shop/frontend-adsvc_down']
		elif crash == 'product':
			traces['FI_traces/hipster_shop/product_down'] = fallback2_traces['FI_traces/hipster_shop/product_down']
		elif crash == 'product-ads':
			traces['FI_traces/hipster_shop/product-adsvc_down'] = fallback2_traces['FI_traces/hipster_shop/product-adsvc_down']
		else:
			print('invalid service, please enter one of the following: ads, frontend-ads, product, product-ads')	
	elif application == 'cinema6':
		traces['filibuster_traces/cinema_6/all_up'] = fallback2_traces['filibuster_traces/cinema_6/all_up']
		traces['filibuster_traces/cinema_6/bookings1_down'] = fallback2_traces['filibuster_traces/cinema_6/bookings1_down']
	elif application == 'expedia':
		traces['filibuster_traces/expedia/all_up'] = fallback2_traces['filibuster_traces/expedia/all_up']
		traces['filibuster_traces/expedia/reviews_down'] = fallback2_traces['filibuster_traces/expedia/reviews_down']
	elif application == 'netflix':
		traces['filibuster_traces/netflix/all_up'] = fallback2_traces['filibuster_traces/netflix/all_up']
		crash = input('please enter a service to crash: bookmarks or recommendations: ')
		if crash == 'bookmarks':
			traces['filibuster_traces/netflix/bkmarks_down'] = fallback2_traces['filibuster_traces/netflix/bkmarks_down']
		elif crash == 'recommendations':
			traces['filibuster_traces/netflix/user_recs_down'] = fallback2_traces['filibuster_traces/netflix/user_recs_down']
		else:
			print('invalid service, please enter one of the following: bookmarks or recommendations')	
	else:
		print('invalid application, please enter one of the following: hipstershop, cinema6, expedia, or netflix')
	f2_process(traces,'result.sql')
	f2_query_all('result.sql')
	os.system('rm result.sql')
else:
	print('invalid pattern type, please enter one of the following: cache, fallback1, or fallback2')	




